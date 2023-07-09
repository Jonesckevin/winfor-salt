{% set inpath = salt['pillar.get']('inpath', 'C:\standalone') %}
{% set user = salt['pillar.get']('winfor_user', 'forensics') %}
{% set SID = salt['user.info'](user).uid %}
{% if grains['osrelease'] == "11" %}

CPC Skipping Start Layout on Windows 11:
  test.nop

{% else %}

cpc-start-layout-file:
  file.managed:
    - name: '{{ inpath }}\WIN-FOR-StartLayout.xml'
    - source: salt://winfor/config/layout/WIN-FOR-StartLayout.xml
    - win_inheritance: True
    - makedirs: True

cpc-start-layout-replace-placeholder:
  file.replace:
    - name: '{{ inpath }}\WIN-FOR-StartLayout.xml'
    - pattern: PLACEHOLDER_PATH
    - repl: {{ inpath | regex_escape }}
    - require:
      - file: cpc-start-layout-file

cpc-start-layout-enable-gpo:
  lgpo.set:
    - user_policy:
        "Start Menu and Taskbar\\Start Layout":
          "Start Layout File": 
             '{{ inpath }}\WIN-FOR-StartLayout.xml'
    - computer_policy:
        "Start Menu and Taskbar\\Start Layout":
          "Start Layout File": 
             '{{ inpath }}\WIN-FOR-StartLayout.xml'

cpc-disable-locked-start-stager:
  file.managed:
    - name: '{{ inpath }}\disable-locked-start.cmd'
    - source: salt://winfor/config/layout/disable-locked-start.cmd
    - win_inheritance: True
    - makedirs: True

cpc-disable-locked-start-layout-on-reboot-hku:
  reg.present:
    - name: HKEY_USERS\{{ SID }}\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce
    - vname: "Disable Locked Start Layout"
    - vtype: REG_SZ
    - vdata: 'C:\Windows\system32\cmd.exe /q /c {{ inpath }}\disable-locked-start.cmd'
    - require:
      - lgpo: cpc-start-layout-enable-gpo
      - file: cpc-disable-locked-start-stager

cpc-disable-locked-start-layout-on-reboot-hklm:
  reg.present:
    - name: HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce
    - vname: "Disable Locked Start Layout"
    - vtype: REG_SZ
    - vdata: 'C:\Windows\system32\cmd.exe /q /c {{ inpath }}\disable-locked-start.cmd'
    - require:
      - lgpo: cpc-start-layout-enable-gpo
      - file: cpc-disable-locked-start-stager

cpc-restart-explorer:
  cmd.run:
    - name: 'Stop-Process -ProcessName "explorer" -Confirm:$false -ErrorAction SilentlyContinue -Force'
    - shell: powershell

{% endif %}
