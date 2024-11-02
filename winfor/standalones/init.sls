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
  - winfor.standalones.silketw
  - winfor.standalones.upx
  - winfor.standalones.peid
  - winfor.standalones.py2exedecompiler
  - winfor.standalones.uniextract2
  - winfor.standalones.innounp
  - winfor.standalones.innoextract
  - winfor.standalones.ppee
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
  - winfor.standalones.exiftool
  - winfor.standalones.memprocfs
  - winfor.standalones.x-ways
  - winfor.standalones.mitec
  - winfor.standalones.unautoit
  - winfor.standalones.hindsight
  - winfor.standalones.iphone-analyzer
  - winfor.standalones.bitrecover-eml-viewer
  - winfor.standalones.rufus
  - winfor.standalones.windowgrid
  - winfor.standalones.procdot
  - winfor.standalones.mftbrowser
  - winfor.standalones.shadowexplorer
  - winfor.standalones.chainsaw
  - winfor.standalones.densityscout
  - winfor.standalones.email-header-analyzer
  - winfor.standalones.photorec
  - winfor.standalones.thumbcacheviewer
  - winfor.standalones.windows-timeline
  - winfor.standalones.network-miner
  - winfor.standalones.pev
  - winfor.standalones.exiftoolgui
  - winfor.standalones.mimikatz
  - winfor.standalones.lrc-cedarpelta
  - winfor.standalones.aurora
  - winfor.standalones.magnet-response
  - winfor.standalones.hayabusa
  - winfor.standalones.trid
  - winfor.standalones.wmi-parser
  - winfor.standalones.onedriveexplorer
  - winfor.standalones.portex-analyzer
  - winfor.standalones.rehex
  - winfor.standalones.volatility-workbench
  - winfor.standalones.scrcpy
  - winfor.standalones.magnet-dumpit
  - winfor.standalones.scdbg
  - winfor.standalones.fit
  - winfor.standalones.apktool
  - winfor.standalones.codetrack
  - winfor.standalones.fex-memory-imager
  - winfor.standalones.bintext
  - winfor.standalones.x64dbg
  - winfor.standalones.jd-gui
  - winfor.standalones.glossary-generator
  - winfor.standalones.hibernation-recon
  - winfor.standalones.usbdetective
  - winfor.standalones.total-pe-2
  - winfor.standalones.memprocfs-analyzer
  - winfor.standalones.itunes-backup-explorer
  - winfor.standalones.ufade

standalones-states:
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
      - sls: winfor.standalones.silketw
      - sls: winfor.standalones.upx
      - sls: winfor.standalones.peid
      - sls: winfor.standalones.py2exedecompiler
      - sls: winfor.standalones.uniextract2
      - sls: winfor.standalones.innounp
      - sls: winfor.standalones.innoextract
      - sls: winfor.standalones.ppee
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
      - sls: winfor.standalones.exiftool
      - sls: winfor.standalones.memprocfs
      - sls: winfor.standalones.x-ways
      - sls: winfor.standalones.mitec
      - sls: winfor.standalones.unautoit
      - sls: winfor.standalones.hindsight
      - sls: winfor.standalones.iphone-analyzer
      - sls: winfor.standalones.bitrecover-eml-viewer
      - sls: winfor.standalones.rufus
      - sls: winfor.standalones.windowgrid
      - sls: winfor.standalones.procdot
      - sls: winfor.standalones.mftbrowser
      - sls: winfor.standalones.shadowexplorer
      - sls: winfor.standalones.chainsaw
      - sls: winfor.standalones.densityscout
      - sls: winfor.standalones.email-header-analyzer
      - sls: winfor.standalones.photorec
      - sls: winfor.standalones.thumbcacheviewer
      - sls: winfor.standalones.windows-timeline
      - sls: winfor.standalones.network-miner
      - sls: winfor.standalones.pev
      - sls: winfor.standalones.exiftoolgui
      - sls: winfor.standalones.mimikatz
      - sls: winfor.standalones.lrc-cedarpelta
      - sls: winfor.standalones.aurora
      - sls: winfor.standalones.magnet-response
      - sls: winfor.standalones.hayabusa
      - sls: winfor.standalones.trid
      - sls: winfor.standalones.wmi-parser
      - sls: winfor.standalones.onedriveexplorer
      - sls: winfor.standalones.portex-analyzer
      - sls: winfor.standalones.rehex
      - sls: winfor.standalones.volatility-workbench
      - sls: winfor.standalones.scrcpy
      - sls: winfor.standalones.magnet-dumpit
      - sls: winfor.standalones.scdbg
      - sls: winfor.standalones.fit
      - sls: winfor.standalones.apktool
      - sls: winfor.standalones.codetrack
      - sls: winfor.standalones.fex-memory-imager
      - sls: winfor.standalones.bintext
      - sls: winfor.standalones.x64dbg
      - sls: winfor.standalones.jd-gui
      - sls: winfor.standalones.glossary-generator
      - sls: winfor.standalones.hibernation-recon
      - sls: winfor.standalones.usbdetective
      - sls: winfor.standalones.total-pe-2
      - sls: winfor.standalones.memprocfs-analyzer
      - sls: winfor.standalones.itunes-backup-explorer
      - sls: winfor.standalones.ufade
