# Name: FastCopy
# Website: https://fastcopy.jp
# Description: Fast file copy software which can retain file details
# Category: Utilities
# Author: FastCopy Lab - https://fastcopy.jp/company.html
# License: Copyright - All rights reserved - https://fastcopy.jp/help/fastcopy_eng.htm#license
# Version: 5.4.1
# Notes:

{% set version = '5.4.1' %}
{% set hash = '5e331238b2cb9e90d1548b61d1e09b5534c0219fa4e76b5b3e7b9634a056b523' %}
{% set downloads = salt['pillar.get']('downloads', 'C:\winfor-downloads') %}

fastcopy-download-only:
  file.managed:
    - name: '{{ downloads }}\FastCopy{{ version }}_installer.exe'
    - source: https://github.com/FastCopyLab/FastCopyDist2/raw/main/FastCopy{{ version }}_installer.exe
    - source_hash: sha256={{ hash }}
    - makedirs: True
