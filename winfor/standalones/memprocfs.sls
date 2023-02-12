# Name: MemProcFS
# Website: https://github.com/ufrisk/MemProcFS
# Description: Memory Process File System
# Category: Raw Parsers / Decoders
# Author: Ulf Frisk
# License: GNU Affero GPL v3.0 - https://github.com/ufrisk/MemProcFS/blob/master/LICENSE
# Version: 5.3.1
# Notes: 

{% set inpath = salt['pillar.get']('inpath', 'C:\standalone') %}
{% set short = '5.3' %}
{% set version = '5.3.1' %}
{% set date = '20230205' %}
{% set hash = '273a7f8fafa722e59f10ed58a5a3df289f413aabb267019bd9192cc65f947d5c' %}

memprocfs-download:
  file.managed:
    - name: 'C:\salt\tempdownload\MemProcFS_files_and_binaries_v{{ version }}-win_x64-{{ date }}.zip'
    - source: https://github.com/ufrisk/MemProcFS/releases/download/v{{ short }}/MemProcFS_files_and_binaries_v{{ version }}-win_x64-{{ date }}.zip
    - source_hash: sha256={{ hash }}
    - makedirs: True

memprocfs-unzip:
  archive.extracted:
    - name: '{{ inpath }}\memprocfs\'
    - source: 'C:\salt\tempdownload\MemProcFS_files_and_binaries_v{{ version }}-win_x64-{{ date }}.zip'
    - enforce_toplevel: False
    - require:
      - file: memprocfs-download

memprocfs-env-vars:
  win_path.exists:
    - name: '{{ inpath }}\memprocfs\'
