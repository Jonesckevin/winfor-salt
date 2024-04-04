# Name: Arsenal Image Mounter
# Website: https://arsenalrecon.com
# Description: Forensic Image Mounter
# Category: Acquisition and Analysis
# Author: Arsenal Recon
# License: https://github.com/ArsenalRecon/Arsenal-Image-Mounter/blob/master/LICENSE.md
# Version: 3.11.282
# Notes:

{% set hash = '716ce6a69aa4ce7575acdecc6abf6b31187bbee073272407a398a2b9d08ec447' %}
{% set version = '3.11.282' %}
{% set file_value = 'mwYHXI5Y#4m2VTesNLNGIoil6B-JWUbadDNg2i3oIAkriHu7AhJQ' %}
{% set downloads = salt['pillar.get']('downloads', 'C:\winfor-downloads') %}
{% set arsenal_zip = downloads + '\\arsenal-image-mounter\\Arsenal-Image-Mounter-v' + version + '.zip' %}

include:
  - winfor.downloads.standalones.megatools

arsenal-folder:
  file.directory:
    - name: '{{ downloads }}\arsenal-image-mounter'
    - win_inheritance: True

{% if salt['file.file_exists'](arsenal_zip) and salt['file.check_hash'](arsenal_zip, hash) %}
arsenal-already-exists:
  test.nop

{% else %}
arsenal-download-only:
  cmd.run:
    - name: '{{ downloads }}\megatools\megatools\megatools.exe dl https://mega.nz/file/{{ file_value }} --path {{ downloads }}\arsenal-image-mounter\'
    - shell: cmd
    - require:
      - sls: winfor.downloads.standalones.megatools
      - file: arsenal-folder
{% endif %}
