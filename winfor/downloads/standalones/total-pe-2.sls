# Name: Total PE 2
# Website: https://github.com/zodiacon/TotalPE2
# Description: PE Viewer
# Category: Executables
# Author: Pavel Yosifovich
# License: MIT License (https://github.com/zodiacon/TotalPE2/blob/master/LICENSE.txt)
# Version: 0.6.5.0
# Notes:

{% set version = '0.6.5.0' %}
{% set hash = '0c3ed7a9621fa2df29cf641a91d24df34b3acf5efeb1ed3efc05de1235ed2655' %}
{% set downloads = salt['pillar.get']('downloads', 'C:\winfor-downloads') %}

total-pe-2-download-only:
  file.managed:
    - name: '{{ downloads }}\total-pe-2\TotalPE.exe'
    - source: https://github.com/zodiacon/AllTools/raw/master/TotalPE.exe
    - source_hash: sha256={{ hash }}
    - makedirs: True

