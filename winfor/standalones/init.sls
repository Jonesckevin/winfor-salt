include:
  - winfor.standalones.zimmerman
  - winfor.standalones.sysinternals
  - winfor.standalones.evtx-dump
  - winfor.standalones.cyberchef
  - winfor.standalones.nirsoft
  - winfor.standalones.eventfinder
  - winfor.standalones.regripper
  - winfor.standalones.usb-write-blocker
  - winfor.standalones.ntfs-log-tracker
  - winfor.standalones.logfileparser
  - winfor.standalones.dotpeek
  - winfor.standalones.kape
  - winfor.standalones.sqlitestudio
  - winfor.standalones.autorunner
  - winfor.standalones.sleuthkit
  - winfor.standalones.logparser-studio
  - winfor.standalones.exeinfope
  - winfor.standalones.floss
  - winfor.standalones.kansa
  - winfor.standalones.logviewer2
  - winfor.standalones.officemalscanner
  - winfor.standalones.pestudio
  - winfor.standalones.cutter
  - winfor.standalones.regshot
  - winfor.standalones.scylla
  - winfor.standalones.srum-dump2
  - winfor.standalones.setdllcharacteristics
  - winfor.standalones.pilfer
  - winfor.standalones.vssmount
  - winfor.standalones.bytecode-viewer
  - winfor.standalones.dex2jar
  - winfor.standalones.autoit-extractor
  - winfor.standalones.die
  - winfor.standalones.pe-bear
  - winfor.standalones.mal-unpack
  - winfor.standalones.hollows-hunter
  - winfor.standalones.pe-sieve
  - winfor.standalones.resource-hacker
  - winfor.standalones.silketw
  - winfor.standalones.upx
  - winfor.standalones.peid
  - winfor.standalones.py2exedecompiler
  - winfor.standalones.uniextract2
  - winfor.standalones.innounp
  - winfor.standalones.innoextract
  - winfor.standalones.ppee
  - winfor.standalones.myaut2exe
  - winfor.standalones.malcat
  - winfor.standalones.lessmsi
  - winfor.standalones.offvis
  - winfor.standalones.megatools
  - winfor.standalones.arsenal-image-mounter
  - winfor.standalones.velociraptor
  - winfor.standalones.winpmem
  - winfor.standalones.magnet-edd
  - winfor.standalones.magnet-process-capture
  - winfor.standalones.magnet-ram-capture
  - winfor.standalones.magnet-web-page-saver-portable
  - winfor.standalones.psdecode
  - winfor.standalones.capa
  - winfor.standalones.ilspy
  - winfor.standalones.exiftool
  - winfor.standalones.memprocfs
  - winfor.standalones.x-ways
  - winfor.standalones.mitec
#  - winfor.standalones.unautoit Downloads removed, builds possible with golang

winfor-standalones:
  test.nop:
    - require:
      - sls: winfor.standalones.zimmerman
      - sls: winfor.standalones.sysinternals
      - sls: winfor.standalones.evtx-dump
      - sls: winfor.standalones.cyberchef
      - sls: winfor.standalones.nirsoft
      - sls: winfor.standalones.eventfinder
      - sls: winfor.standalones.regripper
      - sls: winfor.standalones.usb-write-blocker
      - sls: winfor.standalones.ntfs-log-tracker
      - sls: winfor.standalones.logfileparser
      - sls: winfor.standalones.dotpeek
      - sls: winfor.standalones.kape
      - sls: winfor.standalones.sqlitestudio
      - sls: winfor.standalones.autorunner
      - sls: winfor.standalones.sleuthkit
      - sls: winfor.standalones.logparser-studio
      - sls: winfor.standalones.exeinfope
      - sls: winfor.standalones.floss
      - sls: winfor.standalones.kansa
      - sls: winfor.standalones.logviewer2
      - sls: winfor.standalones.officemalscanner
      - sls: winfor.standalones.pestudio
      - sls: winfor.standalones.cutter
      - sls: winfor.standalones.regshot
      - sls: winfor.standalones.scylla
      - sls: winfor.standalones.srum-dump2
      - sls: winfor.standalones.setdllcharacteristics
      - sls: winfor.standalones.pilfer
      - sls: winfor.standalones.vssmount
      - sls: winfor.standalones.bytecode-viewer
      - sls: winfor.standalones.dex2jar
      - sls: winfor.standalones.autoit-extractor
      - sls: winfor.standalones.die
      - sls: winfor.standalones.pe-bear
      - sls: winfor.standalones.mal-unpack
      - sls: winfor.standalones.hollows-hunter
      - sls: winfor.standalones.pe-sieve
      - sls: winfor.standalones.resource-hacker
      - sls: winfor.standalones.silketw
      - sls: winfor.standalones.upx
      - sls: winfor.standalones.peid
      - sls: winfor.standalones.py2exedecompiler
      - sls: winfor.standalones.uniextract2
      - sls: winfor.standalones.innounp
      - sls: winfor.standalones.innoextract
      - sls: winfor.standalones.ppee
      - sls: winfor.standalones.myaut2exe
      - sls: winfor.standalones.malcat
      - sls: winfor.standalones.lessmsi
      - sls: winfor.standalones.offvis
      - sls: winfor.standalones.megatools
      - sls: winfor.standalones.arsenal-image-mounter
      - sls: winfor.standalones.velociraptor
      - sls: winfor.standalones.winpmem
      - sls: winfor.standalones.magnet-edd
      - sls: winfor.standalones.magnet-process-capture
      - sls: winfor.standalones.magnet-ram-capture
      - sls: winfor.standalones.magnet-web-page-saver-portable
      - sls: winfor.standalones.psdecode
      - sls: winfor.standalones.capa
      - sls: winfor.standalones.ilspy
      - sls: winfor.standalones.exiftool
      - sls: winfor.standalones.memprocfs
      - sls: winfor.standalones.x-ways
      - sls: winfor.standalines.mitec
#      - sls: winfor.standalones.unautoit
