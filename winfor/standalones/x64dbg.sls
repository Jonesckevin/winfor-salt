# Name: x64dbg
# Website: https://sourceforge.net/projects/x64dbg/
# Description: Open Source x64/x32 debugger for Windows
# Category: Executables
# Author: Duncan Ogilvie (mrexodia)
# License: GNU General Public License v3 (https://github.com/x64dbg/x64dbg/blob/development/LICENSE)
# Version: 2023-09-21_00-53
# Notes: 

{% set inpath = salt['pillar.get']('inpath', 'C:\standalone') %}
{% set version = '2023-09-21_00-53' %}
{% set hash = '1ba2c330817da30e1c85eb94071c3db70623aae2c28bc3139aa7b5b938869945' %}
{% set PROGRAMDATA = salt['environ.get']('PROGRAMDATA') %}

x64dbg-download:
  file.managed:
    - name: 'C:\salt\tempdownload\snapshot_{{ version }}.zip'
    - source: https://github.com/x64dbg/x64dbg/releases/download/snapshot/snapshot_{{ version }}.zip
    - source_hash: sha256={{ hash }}
    - makedirs: True

x64dbg-extract:
  archive.extracted:
    - name: '{{ inpath }}\x64dbg'
    - source: 'C:\salt\tempdownload\snapshot_{{ version }}.zip'
    - enforce_toplevel: False
    - require:
      - file: x64dbg-download

standalones-x64dbg-shortcut-1:
  file.shortcut:
    - name: '{{ PROGRAMDATA }}\Microsoft\Windows\Start Menu\Programs\x64dbg.lnk'
    - target: '{{ inpath }}\x64dbg\release\x64\x64dbg.exe'
    - force: True
    - working_dir: '{{ inpath }}\x64dbg\release\x64\'
    - makedirs: True
    - require:
      - file: x64dbg-download
      - archive: x64dbg-extract

standalones-x64dbg-shortcut-2:
  file.shortcut:
    - name: '{{ PROGRAMDATA }}\Microsoft\Windows\Start Menu\Programs\x32dbg.lnk'
    - target: '{{ inpath }}\x64dbg\release\x32\x32dbg.exe'
    - force: True
    - working_dir: '{{ inpath }}\x64dbg\release\x32'
    - makedirs: True
    - require:
      - file: x64dbg-download
      - archive: x64dbg-extract
