include:
  - winfor.packages.python3

XLMMacroDeobfuscator:
  pip.installed:
    - bin_env: 'C:\Program Files\Python310\python.exe'
    - require:
      - sls: winfor.packages.python3
