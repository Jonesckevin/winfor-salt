# Name: Cygwin
# Website: https://cygwin.com
# Description: Linux Terminal Emulator for Windows
# Category: Terminals
# Author: https://cygwin.com/faq.html#faq.what.who
# License: GNU General Public License (GPL) (https://cygwin.com/licensing.html)
# Version: 3.4.6
# Notes: Retcode below is set to '2' for success because the Cygwin installer (even though on Windows) attempts to search for /etc/setup/setup.rc or /etc/setup/installed.db and fails with retcode 2. This causes Saltstack to read an ERROR and result: False, even though the pkg state returns 'install success'.

{% set hash = '6bad4555154b3b348d1bfb633a2e9d6086aa46e36952f456a434ecef5b0010e0' %}
{% set downloads = salt['pillar.get']('downloads', 'C:\winfor-downloads') %}

cygwin-download-only:
  file.managed:
    - name: '{{ downloads }}\setup-x86_64.exe'
    - source: https://cygwin.com/setup-x86_64.exe
    - source_hash: sha256={{ hash }}
    - makedirs: True