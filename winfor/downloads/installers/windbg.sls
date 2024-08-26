# Name: WinDbg
# Website: https://www.microsoft.com
# Description: Windows Debugger
# Category: Executables
# Author: Microsoft
# License: Third-party Notices within app
# Version: 1.2402.24001.0
# Notes: 

{% set version = '1.2402.24001.0' %}
{% set dashes = version | replace(".","-") %}
{% set hash = 'e941076cb4d7912d32a22ea87ad2693c01fa465227b4d1ead588283518de428f' %}
{% set downloads = salt['pillar.get']('downloads', 'C:\winfor-downloads') %}

windbg-download-only:
  file.managed:
    - name: '{{ downloads }}\windbg\windbg-{{ version }}.msixbundle'
    - source: https://windbg.download.prss.microsoft.com/dbazure/prod/{{ dashes }}/windbg.msixbundle
    - source_hash: sha256={{ hash }}
    - makedirs: True
