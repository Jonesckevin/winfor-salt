# Name: PEStudio
# Website: https://www.winitor.com
# Description: PE Analysis Tool
# Category: Executables
# Author: Marc Ochsenmeier
# License: As-Is, without warranty (https://www.winitor.com/tools/pestudio/changes.log)
# Version: 9.51
# Notes: 

{% set inpath = salt['pillar.get']('inpath', 'C:\standalone') %}
{% set PROGRAMDATA = salt['environ.get']('PROGRAMDATA') %}
{% set hash = '338def87bbaebac4d18b8a4b74a8445e3f8fe21e741f92701f705a9749250818' %}

pestudio-download:
  file.managed:
    - name: 'C:\salt\tempdownload\pestudio.zip'
    - source: https://www.winitor.com/tools/pestudio/current/pestudio.zip
    - source_hash: sha256={{ hash }}
    - makedirs: True

pestudio-extract:
  archive.extracted:
    - name: '{{ inpath }}\'
    - source: 'C:\salt\tempdownload\pestudio.zip'
    - enforce_toplevel: False
    - require:
      - file: pestudio-download

pestudio-env-vars:
  win_path.exists:
    - name: '{{ inpath }}\pestudio\'

standalones-pestudio-shortcut:
  file.shortcut:
    - name: '{{ PROGRAMDATA }}\Microsoft\Windows\Start Menu\Programs\PEStudio.lnk'
    - target: '{{ inpath }}\pestudio\pestudio.exe'
    - force: True
    - working_dir: '{{ inpath }}\pestudio\'
    - makedirs: True
    - require:
      - file: pestudio-download
      - archive: pestudio-extract
