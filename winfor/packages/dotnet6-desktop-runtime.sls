# Name: .NET 6 Desktop Runtime
# Website: https://microsoft.com
# Description: Windows Runtime component
# Category: Requirements
# Author: Microsoft
# License: EULA
# Version: 6.0.7.31422
# Notes:

{% set installed = salt['cmd.run']('powershell -c "(Get-ItemProperty HKLM:\\Software\Microsoft\\Windows\\CurrentVersion\\Uninstall\\* | Where-Object {$_.DisplayName -clike \'Microsoft Windows Desktop Runtime - 6*(x64)\' } | Select-Object -ExpandProperty DisplayVersion)"') %}

include:
  - winfor.repos

{% if installed %}

dotnet6-desktop-runtime-already-installed:
  test.nop

{% else %}

dotnet6-desktop-runtime:
  pkg.installed

{% endif %}
