break>D:\STATUSLOG\BPKB-monit-folder.txt
set dateformat=%date:~10,4%%date:~4,2%%date:~7,2%
find "%dateformat%" D:\STATUSLOG\BPKB-StatusLog.log |clip
powershell.exe -File "D:\BPKB-StorageCapacity-Datadog\sizemonitbpkbwithcopylog.ps1" >> D:\STATUSLOG\BPKB-monit-folder.txt