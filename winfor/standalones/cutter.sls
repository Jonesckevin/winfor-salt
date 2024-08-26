# Name: Cutter
# Website: https://github.com/rizinorg/cutter
# Description: Reverse Engineering Platform powered by rizin
# Category: Executables
# Author: Rizin Organization
# License: GNU General Public License v3 (https://github.com/rizinorg/cutter/blob/dev/COPYING)
# Version: 2.3.2
# Notes: 

{% set inpath = salt['pillar.get']('inpath', 'C:\standalone') %}
{% set version = '2.3.2' %}
{% set hash = 'e53a137809a610f939ce13744640f0da67369e87fdb1b2545be3e417c7781c8e' %}
{% set PROGRAMDATA = salt['environ.get']('PROGRAMDATA') %}

cutter-download:
  file.managed:
    - name: 'C:\salt\tempdownload\Cutter-v{{ version }}-Windows-x86_64.zip'
    - source: https://github.com/rizinorg/cutter/releases/download/v{{ version }}/Cutter-v{{ version }}-Windows-x86_64.zip
    - source_hash: sha256={{ hash }}
    - makedirs: True

cutter-extract:
  archive.extracted:
    - name: '{{ inpath }}\'
    - source: 'C:\salt\tempdownload\Cutter-v{{ version }}-Windows-x86_64.zip'
    - enforce_toplevel: False
    - require:
      - file: cutter-download

cutter-folder-rename:
  file.rename:
    - name: '{{ inpath }}\cutter'
    - source: '{{ inpath }}\cutter-v{{ version }}-Windows-x86_64\'
    - force: True
    - makedirs: True
    - require:
      - archive: cutter-extract

standalones-cutter-shortcut:
  file.shortcut:
    - name: '{{ PROGRAMDATA }}\Microsoft\Windows\Start Menu\Programs\Cutter.lnk'
    - target: '{{ inpath }}\cutter\cutter.exe'
    - force: True
    - working_dir: '{{ inpath }}\cutter\'
    - makedirs: True
    - require:
      - file: cutter-download
      - archive: cutter-extract

