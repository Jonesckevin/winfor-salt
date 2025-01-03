# Name: jq
# Website: https://jqlang.github.io/jq 
# Description: Command-line JSON processor
# Category: Utilities
# Author: Stephen Dolan et al (https://github.com/jqlang/jq/blob/master/AUTHORS)
# License: Multi-license (https://github.com/jqlang/jq/blob/master/COPYING)
# Version: 1.7
# Notes: 

{% set version = '1.7' %}
{% set hash = '2e9cc54d0a5d098e2007decec1dbb3c555ca2f5aabded7aec907fe0ffe401aab' %}
{% set inpath = salt['pillar.get']('inpath', 'C:\standalone') %}

jq-download:
  file.managed:
    - name: '{{ inpath }}\jq\jq.exe'
    - source: https://github.com/jqlang/jq/releases/download/jq-{{ version }}/jq-win64.exe
    - source_hash: sha256={{ hash }}
    - makedirs: True
