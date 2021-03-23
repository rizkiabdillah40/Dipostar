$path01 = 'D:\BPKB\BPKB - 01 JAKARTA CENTRAL\'
$path02 = 'D:\BPKB\BPKB - 02 Medan\'
$path03 = 'D:\BPKB\BPKB - 03 Surabaya\'
$path04 = 'D:\BPKB\BPKB - 04 BANDUNG\'
$path05 = 'D:\BPKB\BPKB - 05 LAMPUNG\'
$path06 = 'D:\BPKB\BPKB - 06 Semarang\'
$path07 = 'D:\BPKB\BPKB - 07 PEKANBARU\'
$path08 = 'D:\BPKB\BPKB - 08 JAKARTA-NORTH\'
$path09 = 'D:\BPKB\BPKB - 09 PADANG\'
$path10 = 'D:\BPKB\BPKB - 10 Jakarta Selatan\'
$path11 = 'D:\BPKB\BPKB - 11 JAMBI\'
$path12 = 'D:\BPKB\BPKB - 12 PALEMBANG\'
$path14 = 'D:\BPKB\BPKB - 14 DENPASAR\'
$path15 = 'D:\BPKB\BPKB - 15 SOLO\'
$path16 = 'D:\BPKB\BPKB - 16 CILEGON\'
$path17 = 'D:\BPKB\BPKB - 17 MAKASSAR\'
$path18 = 'D:\BPKB\BPKB - 18 MUARA BUNGO\'
$path19 = 'D:\BPKB\BPKB - 19 RANTAU PRAPAT\'
$path20 = 'D:\BPKB\BPKB - 20 BUKIT TINGGI\'
$path21 = 'D:\BPKB\BPKB - 21 BALIKPAPAN\'
$path22 = 'D:\BPKB\BPKB - 22 Siantar\'
$path23 = 'D:\BPKB\BPKB - 23 PADANG SIDEMPUAN\'
$path24 = 'D:\BPKB\BPKB - 24 Pontianak\'
$path25 = 'D:\BPKB\BPKB - 25 BANJARMASIN\'
$path26 = 'D:\BPKB\BPKB - 26 MALANG\'
$path27 = 'D:\BPKB\BPKB - 27 PURWOKERTO\'
$path28 = 'D:\BPKB\BPKB - 28 SUKABUMI\'
$path29 = 'D:\BPKB\BPKB - 29 JEMBER\'
$path30 = 'D:\BPKB\BPKB - 30 DURI\'
$path31 = 'D:\BPKB\BPKB - 31 KARAWANG\'
$path32 = 'D:\BPKB\BPKB - 32 CIREBON\'
$path33 = 'D:\BPKB\BPKB - 33 CENTRAL JAKARTA I\'
$path34 = 'D:\BPKB\BPKB - 34 TANGERANG\'
$path35 = 'D:\BPKB\BPKB - 35 MEDAN II\'
$path36 = 'D:\BPKB\BPKB - 36 BEKASI\'

cd D:\

$allbranch = Get-Item 'D:\BPKB\' | foreach {$_.Name}
$fullbranch = '- 00 ALLBRANCH'
$fullnamebranch = $allbranch,$fullbranch -join ' '
$Datenow = Get-Date

function Get-Size
{
 param([string]$pth)
 "{0:n2}" -f ((gci -path $pth -recurse | measure-object -property length -sum).sum /1gb)
}
$Sizeall = Get-Size 'D:\BPKB\'
$Foldercountall = (Get-ChildItem 'D:\BPKB\'-Recurse -Directory | Measure-Object).Count
$TotalFileall = (Get-ChildItem 'D:\BPKB\'-Recurse -File -Force | Measure-Object).Count
$writetimeall = (Get-Item 'D:\BPKB\').LastWriteTime.ToString("yyMMdd H.mm")
$allocateanddateall = $Sizeall,$writetimeall -join ' '

cd D:\BPKB

$Jakarta = Get-Item $path01 | foreach {$_.Name}
$Medan = Get-Item $path02 | foreach {$_.Name}
$Surabaya = Get-Item $path03 | foreach {$_.Name}
$Bandung = Get-Item $path04 | foreach {$_.Name}
$Lampung = Get-Item $path05 | foreach {$_.Name}
$Semarang = Get-Item $path06 | foreach {$_.Name}
$Pekanbaru = Get-Item $path07 | foreach {$_.Name}
$Jakartanorth = Get-Item $path08 | foreach {$_.Name}
$Padang = Get-Item $path09 | foreach {$_.Name}
$Jakartaselatan = Get-Item $path10 | foreach {$_.Name}
$Jambi = Get-Item $path11 | foreach {$_.Name}
$Palembang = Get-Item 'D:\BPKB\BPKB - 12 PALEMBANG\' | foreach {$_.Name}
$Denpasar = Get-Item 'D:\BPKB\BPKB - 14 DENPASAR\' | foreach {$_.Name}
$Solo = Get-Item 'D:\BPKB\BPKB - 15 SOLO\' | foreach {$_.Name}
$Cilegon = Get-Item 'D:\BPKB\BPKB - 16 CILEGON\' | foreach {$_.Name}
$Makassar = Get-Item 'D:\BPKB\BPKB - 17 MAKASSAR\' | foreach {$_.Name}
$Muarabungo = Get-Item 'D:\BPKB\BPKB - 18 MUARA BUNGO\' | foreach {$_.Name}
$Rantauprapat = Get-Item 'D:\BPKB\BPKB - 19 RANTAU PRAPAT\' | foreach {$_.Name}
$Bukittinggi = Get-Item 'D:\BPKB\BPKB - 20 BUKIT TINGGI\' | foreach {$_.Name}
$Balikpapan = Get-Item 'D:\BPKB\BPKB - 21 BALIKPAPAN\' | foreach {$_.Name}
$Siantar = Get-Item 'D:\BPKB\BPKB - 22 Siantar\' | foreach {$_.Name}
$Padangsidempuan = Get-Item 'D:\BPKB\BPKB - 23 PADANG SIDEMPUAN\' | foreach {$_.Name}
$Pontianak = Get-Item 'D:\BPKB\BPKB - 24 Pontianak\' | foreach {$_.Name}
$Banjarmasin = Get-Item 'D:\BPKB\BPKB - 25 BANJARMASIN\' | foreach {$_.Name}
$Malang = Get-Item 'D:\BPKB\BPKB - 26 MALANG\' | foreach {$_.Name}
$Purwokerto = Get-Item 'D:\BPKB\BPKB - 27 PURWOKERTO\' | foreach {$_.Name}
$Sukabumi = Get-Item 'D:\BPKB\BPKB - 28 SUKABUMI\' | foreach {$_.Name}
$Jember = Get-Item 'D:\BPKB\BPKB - 29 JEMBER\' | foreach {$_.Name}
$Duri = Get-Item 'D:\BPKB\BPKB - 30 DURI\' | foreach {$_.Name}
$Karawang = Get-Item 'D:\BPKB\BPKB - 31 KARAWANG\' | foreach {$_.Name}
$Cirebon = Get-Item 'D:\BPKB\BPKB - 32 CIREBON\' | foreach {$_.Name}
$Centraljakarta1 = Get-Item 'D:\BPKB\BPKB - 33 CENTRAL JAKARTA I\' | foreach {$_.Name}
$Tangerang = Get-Item 'D:\BPKB\BPKB - 34 TANGERANG\' | foreach {$_.Name}
$Medan2 = Get-Item 'D:\BPKB\BPKB - 35 MEDAN II\' | foreach {$_.Name}
$Bekasi = Get-Item 'D:\BPKB\BPKB - 36 BEKASI\' | foreach {$_.Name}




###################################BPKB - 01 JAKARTA CENTRAL##########################################################

function Get-Size
{
 param([string]$pth)
 "{0:n2}" -f ((gci -path $pth -recurse | measure-object -property length -sum).sum /1gb)
}
$Size01 = Get-Size $path01
$Allocatedper01 = ($Size01/$SizeAll).ToString("P")
$Foldercount01 = (Get-ChildItem $path01 -Recurse -Directory | Measure-Object).Count
$TotalFile01 = (Get-ChildItem $path01 -Recurse -File -Force | Measure-Object).Count
$latesmodify01 = Get-ChildItem -Recurse  -Path $path01 | Sort-Object LastWriteTime -Descending | Select-Object -First 1;
$lastmodified01 = $latesmodify01.LastWriteTime
$lastmodifiedstring01 = $latesmodify01.LastWriteTime.ToString("yyMMdd H.mm")
$writetime01 = (Get-Item $path01).LastWriteTime




if($lastmodified01 -ge $writetime01)
{
 $modifiedcondition01 = $lastmodifiedstring01
} else { $modifiedcondition01 = $writetime01 }


$modifiedconditionstr01 = $modifiedcondition01.ToString("yyMMdd H.mm")

$allocateanddate01 = $Allocatedper01,$modifiedconditionstr01 -join ' '
$DURATION01 = $Datenow - $modifiedcondition01
$TotalDuration01 = $DURATION01.TotalHours

###################################BPKB - 02 Medan##########################################################

function Get-Size
{
 param([string]$pth)
 "{0:n2}" -f ((gci -path $pth -recurse | measure-object -property length -sum).sum /1gb)
}
$Size02 = Get-Size $path02
$Allocatedper02 = ($Size02/$SizeAll).ToString("P")
$Foldercount02 = (Get-ChildItem $path02 -Recurse -Directory | Measure-Object).Count
$TotalFile02 = (Get-ChildItem $path02 -Recurse -File -Force | Measure-Object).Count
$latesmodify02 = Get-ChildItem -Recurse  -Path $path02 | Sort-Object LastWriteTime -Descending | Select-Object -First 1;
$lastmodified02 = $latesmodify02.LastWriteTime
$lastmodifiedstring02 = $latesmodify02.LastWriteTime.ToString("yyMMdd H.mm")
$writetime02 = (Get-Item $path02).LastWriteTime




if($lastmodified02 -ge $writetime02)
{
 $modifiedcondition02 = $lastmodified02
} else { $modifiedcondition02 = $writetime02 }


$modifiedconditionstr02 = $modifiedcondition02.ToString("yyMMdd H.mm")

$allocateanddate02 = $Allocatedper02,$modifiedconditionstr02 -join ' '
$DURATION02 = $Datenow - $modifiedcondition02
$TotalDuration02 = $DURATION02.TotalHours

###################################BPKB - 03 Surabaya##########################################################

function Get-Size
{
 param([string]$pth)
 "{0:n2}" -f ((gci -path $pth -recurse | measure-object -property length -sum).sum /1gb)
}
$Size03 = Get-Size $path03
$Allocatedper03 = ($Size03/$SizeAll).ToString("P")
$Foldercount03 = (Get-ChildItem $path03 -Recurse -Directory | Measure-Object).Count
$TotalFile03 = (Get-ChildItem $path03 -Recurse -File -Force | Measure-Object).Count
$latesmodify03 = Get-ChildItem -Recurse  -Path $path03 | Sort-Object LastWriteTime -Descending | Select-Object -First 1;
$lastmodified03 = $latesmodify03.LastWriteTime
$lastmodifiedstring03 = $latesmodify03.LastWriteTime.ToString("yyMMdd H.mm")
$writetime03 = (Get-Item $path03).LastWriteTime




if($lastmodified03 -ge $writetime03)
{
 $modifiedcondition03 = $lastmodified03
} else { $modifiedcondition03 = $writetime03 }


$modifiedconditionstr03 = $modifiedcondition03.ToString("yyMMdd H.mm")

$allocateanddate03 = $Allocatedper03,$modifiedconditionstr03 -join ' '
$DURATION03 = $Datenow - $modifiedcondition03
$TotalDuration03 = $DURATION03.TotalHours

###################################BPKB - 04 BANDUNG##########################################################

function Get-Size
{
 param([string]$pth)
 "{0:n2}" -f ((gci -path $pth -recurse | measure-object -property length -sum).sum /1gb)
}
$Size04 = Get-Size $path04
$Allocatedper04 = ($Size04/$SizeAll).ToString("P")
$Foldercount04 = (Get-ChildItem $path04 -Recurse -Directory | Measure-Object).Count
$TotalFile04 = (Get-ChildItem $path04 -Recurse -File -Force | Measure-Object).Count
$latesmodify04 = Get-ChildItem -Recurse  -Path $path04 | Sort-Object LastWriteTime -Descending | Select-Object -First 1;
$lastmodified04 = $latesmodify04.LastWriteTime
$lastmodifiedstring04 = $latesmodify04.LastWriteTime.ToString("yyMMdd H.mm")
$writetime04 = (Get-Item $path04).LastWriteTime




if($lastmodified04 -ge $writetime04)
{
 $modifiedcondition04 = $lastmodified04
} else { $modifiedcondition04 = $writetime04 }


$modifiedconditionstr04 = $modifiedcondition04.ToString("yyMMdd H.mm")

$allocateanddate04 = $Allocatedper04,$modifiedconditionstr04 -join ' '
$DURATION04 = $Datenow - $modifiedcondition04
$TotalDuration04 = $DURATION04.TotalHours

###################################BPKB - 05 LAMPUNG##########################################################

function Get-Size
{
 param([string]$pth)
 "{0:n2}" -f ((gci -path $pth -recurse | measure-object -property length -sum).sum /1gb)
}
$Size05 = Get-Size $path05
$Allocatedper05 = ($Size05/$SizeAll).ToString("P")
$Foldercount05 = (Get-ChildItem $path05 -Recurse -Directory | Measure-Object).Count
$TotalFile05 = (Get-ChildItem $path05 -Recurse -File -Force | Measure-Object).Count
$latesmodify05 = Get-ChildItem -Recurse  -Path $path05 | Sort-Object LastWriteTime -Descending | Select-Object -First 1;
$lastmodified05 = $latesmodify05.LastWriteTime
$lastmodifiedstring05 = $latesmodify05.LastWriteTime.ToString("yyMMdd H.mm")
$writetime05 = (Get-Item $path05).LastWriteTime




if($lastmodified05 -ge $writetime05)
{
 $modifiedcondition05 = $lastmodified05
} else { $modifiedcondition05 = $writetime05 }


$modifiedconditionstr05 = $modifiedcondition05.ToString("yyMMdd H.mm")

$allocateanddate05 = $Allocatedper05,$modifiedconditionstr05 -join ' '
$DURATION05 = $Datenow - $modifiedcondition05
$TotalDuration05 = $DURATION05.TotalHours

###################################BPKB - 06 Semarang##########################################################

function Get-Size
{
 param([string]$pth)
 "{0:n2}" -f ((gci -path $pth -recurse | measure-object -property length -sum).sum /1gb)
}
$Size06 = Get-Size $path06
$Allocatedper06 = ($Size06/$SizeAll).ToString("P")
$Foldercount06 = (Get-ChildItem $path06 -Recurse -Directory | Measure-Object).Count
$TotalFile06 = (Get-ChildItem $path06 -Recurse -File -Force | Measure-Object).Count
$latesmodify06 = Get-ChildItem -Recurse  -Path $path06 | Sort-Object LastWriteTime -Descending | Select-Object -First 1;
$lastmodified06 = $latesmodify06.LastWriteTime
$lastmodifiedstring06 = $latesmodify06.LastWriteTime.ToString("yyMMdd H.mm")
$writetime06 = (Get-Item $path06).LastWriteTime




if($lastmodified06 -ge $writetime06)
{
 $modifiedcondition06 = $lastmodified06
} else { $modifiedcondition06 = $writetime06 }


$modifiedconditionstr06 = $modifiedcondition06.ToString("yyMMdd H.mm")

$allocateanddate06 = $Allocatedper06,$modifiedconditionstr06 -join ' '
$DURATION06 = $Datenow - $modifiedcondition06
$TotalDuration06 = $DURATION06.TotalHours

###################################BPKB - 07 PEKANBARU##########################################################

function Get-Size
{
 param([string]$pth)
 "{0:n2}" -f ((gci -path $pth -recurse | measure-object -property length -sum).sum /1gb)
}
$Size07 = Get-Size $path07
$Allocatedper07 = ($Size07/$SizeAll).ToString("P")
$Foldercount07 = (Get-ChildItem $path07 -Recurse -Directory | Measure-Object).Count
$TotalFile07 = (Get-ChildItem $path07 -Recurse -File -Force | Measure-Object).Count
$latesmodify07 = Get-ChildItem -Recurse  -Path $path07 | Sort-Object LastWriteTime -Descending | Select-Object -First 1;
$lastmodified07 = $latesmodify07.LastWriteTime
$lastmodifiedstring07 = $latesmodify07.LastWriteTime.ToString("yyMMdd H.mm")
$writetime07 = (Get-Item $path07).LastWriteTime




if($lastmodified07 -ge $writetime07)
{
 $modifiedcondition07 = $lastmodified07
} else { $modifiedcondition07 = $writetime07 }


$modifiedconditionstr07 = $modifiedcondition07.ToString("yyMMdd H.mm")

$allocateanddate07 = $Allocatedper07,$modifiedconditionstr07 -join ' '
$DURATION07 = $Datenow - $modifiedcondition07
$TotalDuration07 = $DURATION07.TotalHours

###################################BPKB - 08 JAKARTA-NORTH##########################################################

function Get-Size
{
 param([string]$pth)
 "{0:n2}" -f ((gci -path $pth -recurse | measure-object -property length -sum).sum /1gb)
}
$Size08 = Get-Size $path08
$Allocatedper08 = ($Size08/$SizeAll).ToString("P")
$Foldercount08 = (Get-ChildItem $path08 -Recurse -Directory | Measure-Object).Count
$TotalFile08 = (Get-ChildItem $path08 -Recurse -File -Force | Measure-Object).Count
$latesmodify08 = Get-ChildItem -Recurse  -Path $path08 | Sort-Object LastWriteTime -Descending | Select-Object -First 1;
$lastmodified08 = $latesmodify08.LastWriteTime
$lastmodifiedstring08 = $latesmodify08.LastWriteTime.ToString("yyMMdd H.mm")
$writetime08 = (Get-Item $path08).LastWriteTime




if($lastmodified08 -ge $writetime08)
{
 $modifiedcondition08 = $lastmodified08
} else { $modifiedcondition08 = $writetime08 }


$modifiedconditionstr08 = $modifiedcondition08.ToString("yyMMdd H.mm")

$allocateanddate08 = $Allocatedper08,$modifiedconditionstr08 -join ' '
$DURATION08 = $Datenow - $modifiedcondition08
$TotalDuration08 = $DURATION08.TotalHours

###################################BPKB - 09 PADANG##########################################################

function Get-Size
{
 param([string]$pth)
 "{0:n2}" -f ((gci -path $pth -recurse | measure-object -property length -sum).sum /1gb)
}
$Size09 = Get-Size $path09
$Allocatedper09 = ($Size09/$SizeAll).ToString("P")
$Foldercount09 = (Get-ChildItem $path09 -Recurse -Directory | Measure-Object).Count
$TotalFile09 = (Get-ChildItem $path09 -Recurse -File -Force | Measure-Object).Count
$latesmodify09 = Get-ChildItem -Recurse  -Path $path09 | Sort-Object LastWriteTime -Descending | Select-Object -First 1;
$lastmodified09 = $latesmodify09.LastWriteTime
$lastmodifiedstring09 = $latesmodify09.LastWriteTime.ToString("yyMMdd H.mm")
$writetime09 = (Get-Item $path09).LastWriteTime




if($lastmodified09 -ge $writetime09)
{
 $modifiedcondition09 = $lastmodified09
} else { $modifiedcondition09 = $writetime09 }


$modifiedconditionstr09 = $modifiedcondition09.ToString("yyMMdd H.mm")

$allocateanddate09 = $Allocatedper09,$modifiedconditionstr09 -join ' '
$DURATION09 = $Datenow - $modifiedcondition09
$TotalDuration09 = $DURATION09.TotalHours

###################################BPKB - 10 Jakarta Selatan##########################################################

function Get-Size
{
 param([string]$pth)
 "{0:n2}" -f ((gci -path $pth -recurse | measure-object -property length -sum).sum /1gb)
}
$Size10 = Get-Size $path10
$Allocatedper10 = ($Size10/$SizeAll).ToString("P")
$Foldercount10 = (Get-ChildItem $path10 -Recurse -Directory | Measure-Object).Count
$TotalFile10 = (Get-ChildItem $path10 -Recurse -File -Force | Measure-Object).Count
$latesmodify10 = Get-ChildItem -Recurse  -Path $path10 | Sort-Object LastWriteTime -Descending | Select-Object -First 1;
$lastmodified10 = $latesmodify10.LastWriteTime
$lastmodifiedstring10 = $latesmodify10.LastWriteTime.ToString("yyMMdd H.mm")
$writetime10 = (Get-Item $path10).LastWriteTime




if($lastmodified10 -ge $writetime10)
{
 $modifiedcondition10 = $lastmodified10
} else { $modifiedcondition10 = $writetime10 }


$modifiedconditionstr10 = $modifiedcondition10.ToString("yyMMdd H.mm")

$allocateanddate10 = $Allocatedper10,$modifiedconditionstr10 -join ' '
$DURATION10 = $Datenow - $modifiedcondition10
$TotalDuration10 = $DURATION10.TotalHours

###################################BPKB - 11 JAMBI##########################################################

function Get-Size
{
 param([string]$pth)
 "{0:n2}" -f ((gci -path $pth -recurse | measure-object -property length -sum).sum /1gb)
}
$Size11 = Get-Size $path11
$Allocatedper11 = ($Size11/$SizeAll).ToString("P")
$Foldercount11 = (Get-ChildItem $path11 -Recurse -Directory | Measure-Object).Count
$TotalFile11 = (Get-ChildItem $path11 -Recurse -File -Force | Measure-Object).Count
$latesmodify11 = Get-ChildItem -Recurse  -Path $path11 | Sort-Object LastWriteTime -Descending | Select-Object -First 1;
$lastmodified11 = $latesmodify11.LastWriteTime
$lastmodifiedstring11 = $latesmodify11.LastWriteTime.ToString("yyMMdd H.mm")
$writetime11 = (Get-Item $path11).LastWriteTime




if($lastmodified11 -ge $writetime11)
{
 $modifiedcondition11 = $lastmodified11
} else { $modifiedcondition11 = $writetime11 }


$modifiedconditionstr11 = $modifiedcondition11.ToString("yyMMdd H.mm")

$allocateanddate11 = $Allocatedper11,$modifiedconditionstr11 -join ' '
$DURATION11 = $Datenow - $modifiedcondition11
$TotalDuration11 = $DURATION11.TotalHours

###################################BPKB - 12 PALEMBANG##########################################################

function Get-Size
{
 param([string]$pth)
 "{0:n2}" -f ((gci -path $pth -recurse | measure-object -property length -sum).sum /1gb)
}
$Size12 = Get-Size $path12
$Allocatedper12 = ($Size12/$SizeAll).ToString("P")
$Foldercount12 = (Get-ChildItem $path12 -Recurse -Directory | Measure-Object).Count
$TotalFile12 = (Get-ChildItem $path12 -Recurse -File -Force | Measure-Object).Count
$latesmodify12 = Get-ChildItem -Recurse  -Path $path12 | Sort-Object LastWriteTime -Descending | Select-Object -First 1;
$lastmodified12 = $latesmodify12.LastWriteTime
$lastmodifiedstring12 = $latesmodify12.LastWriteTime.ToString("yyMMdd H.mm")
$writetime12 = (Get-Item $path12).LastWriteTime




if($lastmodified12 -ge $writetime12)
{
 $modifiedcondition12 = $lastmodified12
} else { $modifiedcondition12 = $writetime12 }


$modifiedconditionstr12 = $modifiedcondition12.ToString("yyMMdd H.mm")

$allocateanddate12 = $Allocatedper12,$modifiedconditionstr12 -join ' '
$DURATION12 = $Datenow - $modifiedcondition12
$TotalDuration12 = $DURATION12.TotalHours

###################################BPKB - 14 DENPASAR##########################################################

function Get-Size
{
 param([string]$pth)
 "{0:n2}" -f ((gci -path $pth -recurse | measure-object -property length -sum).sum /1gb)
}
$Size14 = Get-Size $path14
$Allocatedper14 = ($Size14/$SizeAll).ToString("P")
$Foldercount14 = (Get-ChildItem $path14 -Recurse -Directory | Measure-Object).Count
$TotalFile14 = (Get-ChildItem $path14 -Recurse -File -Force | Measure-Object).Count
$latesmodify14 = Get-ChildItem -Recurse  -Path $path14 | Sort-Object LastWriteTime -Descending | Select-Object -First 1;
$lastmodified14 = $latesmodify14.LastWriteTime
$lastmodifiedstring14 = $latesmodify14.LastWriteTime.ToString("yyMMdd H.mm")
$writetime14 = (Get-Item $path14).LastWriteTime




if($lastmodified14 -ge $writetime14)
{
 $modifiedcondition14 = $lastmodified14
} else { $modifiedcondition14 = $writetime14 }


$modifiedconditionstr14 = $modifiedcondition14.ToString("yyMMdd H.mm")

$allocateanddate14 = $Allocatedper14,$modifiedconditionstr14 -join ' '
$DURATION14 = $Datenow - $modifiedcondition14
$TotalDuration14 = $DURATION14.TotalHours

###################################BPKB - 15 SOLO##########################################################

function Get-Size
{
 param([string]$pth)
 "{0:n2}" -f ((gci -path $pth -recurse | measure-object -property length -sum).sum /1gb)
}
$Size15 = Get-Size $path15
$Allocatedper15 = ($Size15/$SizeAll).ToString("P")
$Foldercount15 = (Get-ChildItem $path15 -Recurse -Directory | Measure-Object).Count
$TotalFile15 = (Get-ChildItem $path15 -Recurse -File -Force | Measure-Object).Count
$latesmodify15 = Get-ChildItem -Recurse  -Path $path15 | Sort-Object LastWriteTime -Descending | Select-Object -First 1;
$lastmodified15 = $latesmodify15.LastWriteTime
$lastmodifiedstring15 = $latesmodify15.LastWriteTime.ToString("yyMMdd H.mm")
$writetime15 = (Get-Item $path15).LastWriteTime




if($lastmodified15 -ge $writetime15)
{
 $modifiedcondition15 = $lastmodified15
} else { $modifiedcondition15 = $writetime15 }


$modifiedconditionstr15 = $modifiedcondition15.ToString("yyMMdd H.mm")

$allocateanddate15 = $Allocatedper15,$modifiedconditionstr15 -join ' '
$DURATION15 = $Datenow - $modifiedcondition15
$TotalDuration15 = $DURATION15.TotalHours

###################################BPKB - 16 CILEGON##########################################################

function Get-Size
{
 param([string]$pth)
 "{0:n2}" -f ((gci -path $pth -recurse | measure-object -property length -sum).sum /1gb)
}
$Size16 = Get-Size $path16
$Allocatedper16 = ($Size16/$SizeAll).ToString("P")
$Foldercount16 = (Get-ChildItem $path16 -Recurse -Directory | Measure-Object).Count
$TotalFile16 = (Get-ChildItem $path16 -Recurse -File -Force | Measure-Object).Count
$latesmodify16 = Get-ChildItem -Recurse  -Path $path16 | Sort-Object LastWriteTime -Descending | Select-Object -First 1;
$lastmodified16 = $latesmodify16.LastWriteTime
$lastmodifiedstring16 = $latesmodify16.LastWriteTime.ToString("yyMMdd H.mm")
$writetime16 = (Get-Item $path16).LastWriteTime




if($lastmodified16 -ge $writetime16)
{
 $modifiedcondition16 = $lastmodified16
} else { $modifiedcondition16 = $writetime16 }


$modifiedconditionstr16 = $modifiedcondition16.ToString("yyMMdd H.mm")

$allocateanddate16 = $Allocatedper16,$modifiedconditionstr16 -join ' '
$DURATION16 = $Datenow - $modifiedcondition16
$TotalDuration16 = $DURATION16.TotalHours

###################################BPKB - 17 MAKASSAR##########################################################

function Get-Size
{
 param([string]$pth)
 "{0:n2}" -f ((gci -path $pth -recurse | measure-object -property length -sum).sum /1gb)
}
$Size17 = Get-Size $path17
$Allocatedper17 = ($Size17/$SizeAll).ToString("P")
$Foldercount17 = (Get-ChildItem $path17 -Recurse -Directory | Measure-Object).Count
$TotalFile17 = (Get-ChildItem $path17 -Recurse -File -Force | Measure-Object).Count
$latesmodify17 = Get-ChildItem -Recurse  -Path $path17 | Sort-Object LastWriteTime -Descending | Select-Object -First 1;
$lastmodified17 = $latesmodify17.LastWriteTime
$lastmodifiedstring17 = $latesmodify17.LastWriteTime.ToString("yyMMdd H.mm")
$writetime17 = (Get-Item $path17).LastWriteTime




if($lastmodified17 -ge $writetime17)
{
 $modifiedcondition17 = $lastmodified17
} else { $modifiedcondition17 = $writetime17 }


$modifiedconditionstr17 = $modifiedcondition17.ToString("yyMMdd H.mm")

$allocateanddate17 = $Allocatedper17,$modifiedconditionstr17 -join ' '
$DURATION17 = $Datenow - $modifiedcondition17
$TotalDuration17 = $DURATION17.TotalHours

###################################BPKB - 18 MUARA BUNGO##########################################################

function Get-Size
{
 param([string]$pth)
 "{0:n2}" -f ((gci -path $pth -recurse | measure-object -property length -sum).sum /1gb)
}
$Size18 = Get-Size $path18
$Allocatedper18 = ($Size18/$SizeAll).ToString("P")
$Foldercount18 = (Get-ChildItem $path18 -Recurse -Directory | Measure-Object).Count
$TotalFile18 = (Get-ChildItem $path18 -Recurse -File -Force | Measure-Object).Count
$latesmodify18 = Get-ChildItem -Recurse  -Path $path18 | Sort-Object LastWriteTime -Descending | Select-Object -First 1;
$lastmodified18 = $latesmodify18.LastWriteTime
$lastmodifiedstring18 = $latesmodify18.LastWriteTime.ToString("yyMMdd H.mm")
$writetime18 = (Get-Item $path18).LastWriteTime




if($lastmodified18 -ge $writetime18)
{
 $modifiedcondition18 = $lastmodified18
} else { $modifiedcondition18 = $writetime18 }


$modifiedconditionstr18 = $modifiedcondition18.ToString("yyMMdd H.mm")

$allocateanddate18 = $Allocatedper18,$modifiedconditionstr18 -join ' '
$DURATION18 = $Datenow - $modifiedcondition18
$TotalDuration18 = $DURATION18.TotalHours

###################################BPKB - 19 RANTAU PRAPAT##########################################################

function Get-Size
{
 param([string]$pth)
 "{0:n2}" -f ((gci -path $pth -recurse | measure-object -property length -sum).sum /1gb)
}
$Size19 = Get-Size $path19
$Allocatedper19 = ($Size19/$SizeAll).ToString("P")
$Foldercount19 = (Get-ChildItem $path19 -Recurse -Directory | Measure-Object).Count
$TotalFile19 = (Get-ChildItem $path19 -Recurse -File -Force | Measure-Object).Count
$latesmodify19 = Get-ChildItem -Recurse  -Path $path19 | Sort-Object LastWriteTime -Descending | Select-Object -First 1;
$lastmodified19 = $latesmodify19.LastWriteTime
$lastmodifiedstring19 = $latesmodify19.LastWriteTime.ToString("yyMMdd H.mm")
$writetime19 = (Get-Item $path19).LastWriteTime




if($lastmodified19 -ge $writetime19)
{
 $modifiedcondition19 = $lastmodified19
} else { $modifiedcondition19 = $writetime19 }


$modifiedconditionstr19 = $modifiedcondition19.ToString("yyMMdd H.mm")

$allocateanddate19 = $Allocatedper19,$modifiedconditionstr19 -join ' '
$DURATION19 = $Datenow - $modifiedcondition19
$TotalDuration19 = $DURATION19.TotalHours

###################################BPKB - 20 BUKIT TINGGI##########################################################

function Get-Size
{
 param([string]$pth)
 "{0:n2}" -f ((gci -path $pth -recurse | measure-object -property length -sum).sum /1gb)
}
$Size20 = Get-Size $path20
$Allocatedper20 = ($Size20/$SizeAll).ToString("P")
$Foldercount20 = (Get-ChildItem $path20 -Recurse -Directory | Measure-Object).Count
$TotalFile20 = (Get-ChildItem $path20 -Recurse -File -Force | Measure-Object).Count
$latesmodify20 = Get-ChildItem -Recurse  -Path $path20 | Sort-Object LastWriteTime -Descending | Select-Object -First 1;
$lastmodified20 = $latesmodify20.LastWriteTime
$lastmodifiedstring20 = $latesmodify20.LastWriteTime.ToString("yyMMdd H.mm")
$writetime20 = (Get-Item $path20).LastWriteTime




if($lastmodified20 -ge $writetime20)
{
 $modifiedcondition20 = $lastmodified20
} else { $modifiedcondition20 = $writetime20 }


$modifiedconditionstr20 = $modifiedcondition20.ToString("yyMMdd H.mm")

$allocateanddate20 = $Allocatedper20,$modifiedconditionstr20 -join ' '
$DURATION20 = $Datenow - $modifiedcondition20
$TotalDuration20 = $DURATION20.TotalHours

###################################BPKB - 21 BALIKPAPAN##########################################################

function Get-Size
{
 param([string]$pth)
 "{0:n2}" -f ((gci -path $pth -recurse | measure-object -property length -sum).sum /1gb)
}
$Size21 = Get-Size $path21
$Allocatedper21 = ($Size21/$SizeAll).ToString("P")
$Foldercount21 = (Get-ChildItem $path21 -Recurse -Directory | Measure-Object).Count
$TotalFile21 = (Get-ChildItem $path21 -Recurse -File -Force | Measure-Object).Count
$latesmodify21 = Get-ChildItem -Recurse  -Path $path21 | Sort-Object LastWriteTime -Descending | Select-Object -First 1;
$lastmodified21 = $latesmodify21.LastWriteTime
$lastmodifiedstring21 = $latesmodify21.LastWriteTime.ToString("yyMMdd H.mm")
$writetime21 = (Get-Item $path21).LastWriteTime




if($lastmodified21 -ge $writetime21)
{
 $modifiedcondition21 = $lastmodified21
} else { $modifiedcondition21 = $writetime21 }


$modifiedconditionstr21 = $modifiedcondition21.ToString("yyMMdd H.mm")

$allocateanddate21 = $Allocatedper21,$modifiedconditionstr21 -join ' '
$DURATION21 = $Datenow - $modifiedcondition21
$TotalDuration21 = $DURATION21.TotalHours

###################################BPKB - 22 Siantar##########################################################

function Get-Size
{
 param([string]$pth)
 "{0:n2}" -f ((gci -path $pth -recurse | measure-object -property length -sum).sum /1gb)
}
$Size22 = Get-Size $path22
$Allocatedper22 = ($Size22/$SizeAll).ToString("P")
$Foldercount22 = (Get-ChildItem $path22 -Recurse -Directory | Measure-Object).Count
$TotalFile22 = (Get-ChildItem $path22 -Recurse -File -Force | Measure-Object).Count
$latesmodify22 = Get-ChildItem -Recurse  -Path $path22 | Sort-Object LastWriteTime -Descending | Select-Object -First 1;
$lastmodified22 = $latesmodify22.LastWriteTime
$lastmodifiedstring22 = $latesmodify22.LastWriteTime.ToString("yyMMdd H.mm")
$writetime22 = (Get-Item $path22).LastWriteTime




if($lastmodified22 -ge $writetime22)
{
 $modifiedcondition22 = $lastmodified22
} else { $modifiedcondition22 = $writetime22 }


$modifiedconditionstr22 = $modifiedcondition22.ToString("yyMMdd H.mm")

$allocateanddate22 = $Allocatedper22,$modifiedconditionstr22 -join ' '
$DURATION22 = $Datenow - $modifiedcondition22
$TotalDuration22 = $DURATION22.TotalHours

###################################BPKB - 23 PADANG SIDEMPUAN##########################################################

function Get-Size
{
 param([string]$pth)
 "{0:n2}" -f ((gci -path $pth -recurse | measure-object -property length -sum).sum /1gb)
}
$Size23 = Get-Size $path23
$Allocatedper23 = ($Size23/$SizeAll).ToString("P")
$Foldercount23 = (Get-ChildItem $path23 -Recurse -Directory | Measure-Object).Count
$TotalFile23 = (Get-ChildItem $path23 -Recurse -File -Force | Measure-Object).Count
$latesmodify23 = Get-ChildItem -Recurse  -Path $path23 | Sort-Object LastWriteTime -Descending | Select-Object -First 1;
$lastmodified23 = $latesmodify23.LastWriteTime
$lastmodifiedstring23 = $latesmodify23.LastWriteTime.ToString("yyMMdd H.mm")
$writetime23 = (Get-Item $path23).LastWriteTime




if($lastmodified23 -ge $writetime23)
{
 $modifiedcondition23 = $lastmodified23
} else { $modifiedcondition23 = $writetime23 }


$modifiedconditionstr23 = $modifiedcondition23.ToString("yyMMdd H.mm")

$allocateanddate23 = $Allocatedper23,$modifiedconditionstr23 -join ' '
$DURATION23 = $Datenow - $modifiedcondition23
$TotalDuration23 = $DURATION23.TotalHours

###################################BPKB - 24 Pontianak##########################################################

function Get-Size
{
 param([string]$pth)
 "{0:n2}" -f ((gci -path $pth -recurse | measure-object -property length -sum).sum /1gb)
}
$Size24 = Get-Size $path24
$Allocatedper24 = ($Size24/$SizeAll).ToString("P")
$Foldercount24 = (Get-ChildItem $path24 -Recurse -Directory | Measure-Object).Count
$TotalFile24 = (Get-ChildItem $path24 -Recurse -File -Force | Measure-Object).Count
$latesmodify24 = Get-ChildItem -Recurse  -Path $path24 | Sort-Object LastWriteTime -Descending | Select-Object -First 1;
$lastmodified24 = $latesmodify24.LastWriteTime
$lastmodifiedstring24 = $latesmodify24.LastWriteTime.ToString("yyMMdd H.mm")
$writetime24 = (Get-Item $path24).LastWriteTime




if($lastmodified24 -ge $writetime24)
{
 $modifiedcondition24 = $lastmodified24
} else { $modifiedcondition24 = $writetime24 }


$modifiedconditionstr24 = $modifiedcondition24.ToString("yyMMdd H.mm")

$allocateanddate24 = $Allocatedper24,$modifiedconditionstr24 -join ' '
$DURATION24 = $Datenow - $modifiedcondition24
$TotalDuration24 = $DURATION24.TotalHours

###################################BPKB - 25 BANJARMASIN##########################################################

function Get-Size
{
 param([string]$pth)
 "{0:n2}" -f ((gci -path $pth -recurse | measure-object -property length -sum).sum /1gb)
}
$Size25 = Get-Size $path25
$Allocatedper25 = ($Size25/$SizeAll).ToString("P")
$Foldercount25 = (Get-ChildItem $path25 -Recurse -Directory | Measure-Object).Count
$TotalFile25 = (Get-ChildItem $path25 -Recurse -File -Force | Measure-Object).Count
$latesmodify25 = Get-ChildItem -Recurse  -Path $path25 | Sort-Object LastWriteTime -Descending | Select-Object -First 1;
$lastmodified25 = $latesmodify25.LastWriteTime
$lastmodifiedstring25 = $latesmodify25.LastWriteTime.ToString("yyMMdd H.mm")
$writetime25 = (Get-Item $path25).LastWriteTime




if($lastmodified25 -ge $writetime25)
{
 $modifiedcondition25 = $lastmodified25
} else { $modifiedcondition25 = $writetime25 }


$modifiedconditionstr25 = $modifiedcondition25.ToString("yyMMdd H.mm")

$allocateanddate25 = $Allocatedper25,$modifiedconditionstr25 -join ' '
$DURATION25 = $Datenow - $modifiedcondition25
$TotalDuration25 = $DURATION25.TotalHours

###################################BPKB - 26 MALANG##########################################################

function Get-Size
{
 param([string]$pth)
 "{0:n2}" -f ((gci -path $pth -recurse | measure-object -property length -sum).sum /1gb)
}
$Size26 = Get-Size $path26
$Allocatedper26 = ($Size26/$SizeAll).ToString("P")
$Foldercount26 = (Get-ChildItem $path26 -Recurse -Directory | Measure-Object).Count
$TotalFile26 = (Get-ChildItem $path26 -Recurse -File -Force | Measure-Object).Count
$latesmodify26 = Get-ChildItem -Recurse  -Path $path26 | Sort-Object LastWriteTime -Descending | Select-Object -First 1;
$lastmodified26 = $latesmodify26.LastWriteTime
$lastmodifiedstring26 = $latesmodify26.LastWriteTime.ToString("yyMMdd H.mm")
$writetime26 = (Get-Item $path26).LastWriteTime




if($lastmodified26 -ge $writetime26)
{
 $modifiedcondition26 = $lastmodified26
} else { $modifiedcondition26 = $writetime26 }


$modifiedconditionstr26 = $modifiedcondition26.ToString("yyMMdd H.mm")

$allocateanddate26 = $Allocatedper26,$modifiedconditionstr26 -join ' '
$DURATION26 = $Datenow - $modifiedcondition26
$TotalDuration26 = $DURATION26.TotalHours

###################################BPKB - 27 PURWOKERTO##########################################################

function Get-Size
{
 param([string]$pth)
 "{0:n2}" -f ((gci -path $pth -recurse | measure-object -property length -sum).sum /1gb)
}
$Size27 = Get-Size $path27
$Allocatedper27 = ($Size27/$SizeAll).ToString("P")
$Foldercount27 = (Get-ChildItem $path27 -Recurse -Directory | Measure-Object).Count
$TotalFile27 = (Get-ChildItem $path27 -Recurse -File -Force | Measure-Object).Count
$latesmodify27 = Get-ChildItem -Recurse  -Path $path27 | Sort-Object LastWriteTime -Descending | Select-Object -First 1;
$lastmodified27 = $latesmodify27.LastWriteTime
$lastmodifiedstring27 = $latesmodify27.LastWriteTime.ToString("yyMMdd H.mm")
$writetime27 = (Get-Item $path27).LastWriteTime




if($lastmodified27 -ge $writetime27)
{
 $modifiedcondition27 = $lastmodified27
} else { $modifiedcondition27 = $writetime27 }


$modifiedconditionstr27 = $modifiedcondition27.ToString("yyMMdd H.mm")

$allocateanddate27 = $Allocatedper27,$modifiedconditionstr27 -join ' '
$DURATION27 = $Datenow - $modifiedcondition27
$TotalDuration27 = $DURATION27.TotalHours

###################################BPKB - 28 SUKABUMI##########################################################

function Get-Size
{
 param([string]$pth)
 "{0:n2}" -f ((gci -path $pth -recurse | measure-object -property length -sum).sum /1gb)
}
$Size28 = Get-Size $path28
$Allocatedper28 = ($Size28/$SizeAll).ToString("P")
$Foldercount28 = (Get-ChildItem $path28 -Recurse -Directory | Measure-Object).Count
$TotalFile28 = (Get-ChildItem $path28 -Recurse -File -Force | Measure-Object).Count
$latesmodify28 = Get-ChildItem -Recurse  -Path $path28 | Sort-Object LastWriteTime -Descending | Select-Object -First 1;
$lastmodified28 = $latesmodify28.LastWriteTime
$lastmodifiedstring28 = $latesmodify28.LastWriteTime.ToString("yyMMdd H.mm")
$writetime28 = (Get-Item $path28).LastWriteTime




if($lastmodified28 -ge $writetime28)
{
 $modifiedcondition28 = $lastmodified28
} else { $modifiedcondition28 = $writetime28 }


$modifiedconditionstr28 = $modifiedcondition28.ToString("yyMMdd H.mm")

$allocateanddate28 = $Allocatedper28,$modifiedconditionstr28 -join ' '
$DURATION28 = $Datenow - $modifiedcondition28
$TotalDuration28 = $DURATION28.TotalHours

###################################BPKB - 29 JEMBER##########################################################

function Get-Size
{
 param([string]$pth)
 "{0:n2}" -f ((gci -path $pth -recurse | measure-object -property length -sum).sum /1gb)
}
$Size29 = Get-Size $path29
$Allocatedper29 = ($Size29/$SizeAll).ToString("P")
$Foldercount29 = (Get-ChildItem $path29 -Recurse -Directory | Measure-Object).Count
$TotalFile29 = (Get-ChildItem $path29 -Recurse -File -Force | Measure-Object).Count
$latesmodify29 = Get-ChildItem -Recurse  -Path $path29 | Sort-Object LastWriteTime -Descending | Select-Object -First 1;
$lastmodified29 = $latesmodify29.LastWriteTime
$lastmodifiedstring29 = $latesmodify29.LastWriteTime.ToString("yyMMdd H.mm")
$writetime29 = (Get-Item $path29).LastWriteTime




if($lastmodified29 -ge $writetime29)
{
 $modifiedcondition29 = $lastmodified29
} else { $modifiedcondition29 = $writetime29 }


$modifiedconditionstr29 = $modifiedcondition29.ToString("yyMMdd H.mm")

$allocateanddate29 = $Allocatedper29,$modifiedconditionstr29 -join ' '
$DURATION29 = $Datenow - $modifiedcondition29
$TotalDuration29 = $DURATION29.TotalHours

###################################BPKB - 30 DURI##########################################################

function Get-Size
{
 param([string]$pth)
 "{0:n2}" -f ((gci -path $pth -recurse | measure-object -property length -sum).sum /1gb)
}
$Size30 = Get-Size $path30
$Allocatedper30 = ($Size30/$SizeAll).ToString("P")
$Foldercount30 = (Get-ChildItem $path30 -Recurse -Directory | Measure-Object).Count
$TotalFile30 = (Get-ChildItem $path30 -Recurse -File -Force | Measure-Object).Count
$latesmodify30 = Get-ChildItem -Recurse  -Path $path30 | Sort-Object LastWriteTime -Descending | Select-Object -First 1;
$lastmodified30 = $latesmodify30.LastWriteTime
$lastmodifiedstring30 = $latesmodify30.LastWriteTime.ToString("yyMMdd H.mm")
$writetime30 = (Get-Item $path30).LastWriteTime




if($lastmodified30 -ge $writetime30)
{
 $modifiedcondition30 = $lastmodified30
} else { $modifiedcondition30 = $writetime30 }


$modifiedconditionstr30 = $modifiedcondition30.ToString("yyMMdd H.mm")

$allocateanddate30 = $Allocatedper30,$modifiedconditionstr30 -join ' '
$DURATION30 = $Datenow - $modifiedcondition30
$TotalDuration30 = $DURATION30.TotalHours

###################################BPKB - 31 KARAWANG##########################################################

function Get-Size
{
 param([string]$pth)
 "{0:n2}" -f ((gci -path $pth -recurse | measure-object -property length -sum).sum /1gb)
}
$Size31 = Get-Size $path31
$Allocatedper31 = ($Size31/$SizeAll).ToString("P")
$Foldercount31 = (Get-ChildItem $path31 -Recurse -Directory | Measure-Object).Count
$TotalFile31 = (Get-ChildItem $path31 -Recurse -File -Force | Measure-Object).Count
$latesmodify31 = Get-ChildItem -Recurse  -Path $path31 | Sort-Object LastWriteTime -Descending | Select-Object -First 1;
$lastmodified31 = $latesmodify31.LastWriteTime
$lastmodifiedstring31 = $latesmodify31.LastWriteTime.ToString("yyMMdd H.mm")
$writetime31 = (Get-Item $path31).LastWriteTime




if($lastmodified31 -ge $writetime31)
{
 $modifiedcondition31 = $lastmodified31
} else { $modifiedcondition31 = $writetime31 }


$modifiedconditionstr31 = $modifiedcondition31.ToString("yyMMdd H.mm")

$allocateanddate31 = $Allocatedper31,$modifiedconditionstr31 -join ' '
$DURATION31 = $Datenow - $modifiedcondition31
$TotalDuration31 = $DURATION31.TotalHours

###################################BPKB - 32 CIREBON##########################################################

function Get-Size
{
 param([string]$pth)
 "{0:n2}" -f ((gci -path $pth -recurse | measure-object -property length -sum).sum /1gb)
}
$Size32 = Get-Size $path32
$Allocatedper32 = ($Size32/$SizeAll).ToString("P")
$Foldercount32 = (Get-ChildItem $path32 -Recurse -Directory | Measure-Object).Count
$TotalFile32 = (Get-ChildItem $path32 -Recurse -File -Force | Measure-Object).Count
$latesmodify32 = Get-ChildItem -Recurse  -Path $path32 | Sort-Object LastWriteTime -Descending | Select-Object -First 1;
$lastmodified32 = $latesmodify32.LastWriteTime
$lastmodifiedstring32 = $latesmodify32.LastWriteTime.ToString("yyMMdd H.mm")
$writetime32 = (Get-Item $path32).LastWriteTime




if($lastmodified32 -ge $writetime32)
{
 $modifiedcondition32 = $lastmodified32
} else { $modifiedcondition32 = $writetime32 }


$modifiedconditionstr32 = $modifiedcondition32.ToString("yyMMdd H.mm")

$allocateanddate32 = $Allocatedper32,$modifiedconditionstr32 -join ' '
$DURATION32 = $Datenow - $modifiedcondition32
$TotalDuration32 = $DURATION32.TotalHours


###################################BPKB - 33 CENTRAL JAKARTA I##########################################################

function Get-Size
{
 param([string]$pth)
 "{0:n2}" -f ((gci -path $pth -recurse | measure-object -property length -sum).sum /1gb)
}
$Size33 = Get-Size $path33
$Allocatedper33 = ($Size33/$SizeAll).ToString("P")
$Foldercount33 = (Get-ChildItem $path33 -Recurse -Directory | Measure-Object).Count
$TotalFile33 = (Get-ChildItem $path33 -Recurse -File -Force | Measure-Object).Count
$latesmodify33 = Get-ChildItem -Recurse  -Path $path33 | Sort-Object LastWriteTime -Descending | Select-Object -First 1;
$lastmodified33 = $latesmodify33.LastWriteTime
$lastmodifiedstring33 = $latesmodify33.LastWriteTime.ToString("yyMMdd H.mm")
$writetime33 = (Get-Item $path33).LastWriteTime




if($lastmodified33 -ge $writetime33)
{
 $modifiedcondition33 = $lastmodified33
} else { $modifiedcondition33 = $writetime33 }


$modifiedconditionstr33 = $modifiedcondition33.ToString("yyMMdd H.mm")

$allocateanddate33 = $Allocatedper33,$modifiedconditionstr33 -join ' '
$DURATION33 = $Datenow - $modifiedcondition33
$TotalDuration33 = $DURATION33.TotalHours

###################################BPKB - 34 TANGERANG##########################################################

function Get-Size
{
 param([string]$pth)
 "{0:n2}" -f ((gci -path $pth -recurse | measure-object -property length -sum).sum /1gb)
}
$Size34 = Get-Size $path34
$Allocatedper34 = ($Size34/$SizeAll).ToString("P")
$Foldercount34 = (Get-ChildItem $path34 -Recurse -Directory | Measure-Object).Count
$TotalFile34 = (Get-ChildItem $path34 -Recurse -File -Force | Measure-Object).Count
$latesmodify34 = Get-ChildItem -Recurse  -Path $path34 | Sort-Object LastWriteTime -Descending | Select-Object -First 1;
$lastmodified34 = $latesmodify34.LastWriteTime
$lastmodifiedstring34 = $latesmodify34.LastWriteTime.ToString("yyMMdd H.mm")
$writetime34 = (Get-Item $path34).LastWriteTime




if($lastmodified34 -ge $writetime34)
{
 $modifiedcondition34 = $lastmodified34
} else { $modifiedcondition34 = $writetime34 }


$modifiedconditionstr34 = $modifiedcondition34.ToString("yyMMdd H.mm")

$allocateanddate34 = $Allocatedper34,$modifiedconditionstr34 -join ' '
$DURATION34 = $Datenow - $modifiedcondition34
$TotalDuration34 = $DURATION34.TotalHours

###################################BPKB - 35 MEDAN II##########################################################

function Get-Size
{
 param([string]$pth)
 "{0:n2}" -f ((gci -path $pth -recurse | measure-object -property length -sum).sum /1gb)
}
$Size35 = Get-Size $path35
$Allocatedper35 = ($Size35/$SizeAll).ToString("P")
$Foldercount35 = (Get-ChildItem $path35 -Recurse -Directory | Measure-Object).Count
$TotalFile35 = (Get-ChildItem $path35 -Recurse -File -Force | Measure-Object).Count
$latesmodify35 = Get-ChildItem -Recurse  -Path $path35 | Sort-Object LastWriteTime -Descending | Select-Object -First 1;
$lastmodified35 = $latesmodify35.LastWriteTime
$lastmodifiedstring35 = $latesmodify35.LastWriteTime.ToString("yyMMdd H.mm")
$writetime35 = (Get-Item $path35).LastWriteTime




if($lastmodified35 -ge $writetime35)
{
 $modifiedcondition35 = $lastmodified35
} else { $modifiedcondition35 = $writetime35 }


$modifiedconditionstr35 = $modifiedcondition35.ToString("yyMMdd H.mm")

$allocateanddate35 = $Allocatedper35,$modifiedconditionstr35 -join ' '
$DURATION35 = $Datenow - $modifiedcondition35
$TotalDuration35 = $DURATION35.TotalHours

###################################BPKB - BPKB - 36 BEKASI##########################################################

function Get-Size
{
 param([string]$pth)
 "{0:n2}" -f ((gci -path $pth -recurse | measure-object -property length -sum).sum /1gb)
}
$Size36 = Get-Size $path36
$Allocatedper36 = ($Size36/$SizeAll).ToString("P")
$Foldercount36 = (Get-ChildItem $path36 -Recurse -Directory | Measure-Object).Count
$TotalFile36 = (Get-ChildItem $path36 -Recurse -File -Force | Measure-Object).Count
$latesmodify36 = Get-ChildItem -Recurse  -Path $path36 | Sort-Object LastWriteTime -Descending | Select-Object -First 1;
$lastmodified36 = $latesmodify36.LastWriteTime
$lastmodifiedstring36 = $latesmodify36.LastWriteTime.ToString("yyMMdd H.mm")
$writetime36 = (Get-Item $path36).LastWriteTime



if($lastmodified36 -ge $writetime36)
{
 $modifiedcondition36 = $lastmodified36
} else { $modifiedcondition36 = $writetime36 }


$modifiedconditionstr36 = $modifiedcondition36.ToString("yyMMdd H.mm")

$allocateanddate36 = $Allocatedper36,$modifiedconditionstr36 -join ' '
$DURATION36 = $Datenow - $modifiedcondition36
$TotalDuration36 = $DURATION36.TotalHours

$allbranch,$Sizeall,$Foldercountall,$TotalFileall -join ','
$Jakarta,$Size01,$Foldercount01,$TotalFile01,$allocateanddate01,$TotalDuration01 -join ','
$Medan,$Size02,$Foldercount02,$TotalFile02,$allocateanddate02,$TotalDuration02 -join ','
$Surabaya,$Size03,$Foldercount03,$TotalFile03,$allocateanddate03,$TotalDuration03 -join ','
$Bandung,$Size04,$Foldercount04,$TotalFile04,$allocateanddate04,$TotalDuration04 -join ','
$Lampung,$Size05,$Foldercount05,$TotalFile05,$allocateanddate05,$TotalDuration05 -join ','
$Semarang,$Size06,$Foldercount06,$TotalFile06,$allocateanddate06,$TotalDuration06 -join ','
$Pekanbaru,$Size07,$Foldercount07,$TotalFile07,$allocateanddate07,$TotalDuration07 -join ','
$Jakartanorth,$Size08,$Foldercount08,$TotalFile08,$allocateanddate08,$TotalDuration08 -join ','
$Padang,$Size09,$Foldercount09,$TotalFile09,$allocateanddate09,$TotalDuration09 -join ','
$Jakartaselatan,$Size10,$Foldercount10,$TotalFile10,$allocateanddate10,$TotalDuration10 -join ','
$Jambi,$Size11,$Foldercount11,$TotalFile11,$allocateanddate11,$TotalDuration11 -join ','
$Palembang,$Size12,$Foldercount12,$TotalFile12,$allocateanddate12,$TotalDuration12 -join ','
$Denpasar,$Size14,$Foldercount14,$TotalFile14,$allocateanddate14,$TotalDuration14 -join ','
$Solo,$Size15,$Foldercount15,$TotalFile15,$allocateanddate15,$TotalDuration15 -join ','
$Cilegon,$Size16,$Foldercount16,$TotalFile16,$allocateanddate16,$TotalDuration16 -join ','
$Makassar,$Size17,$Foldercount17,$TotalFile17,$allocateanddate17,$TotalDuration17 -join ','
$Muarabungo,$Size18,$Foldercount18,$TotalFile18,$allocateanddate18,$TotalDuration18 -join ','
$Rantauprapat,$Size19,$Foldercount19,$TotalFile19,$allocateanddate19,$TotalDuration19 -join ','
$Bukittinggi,$Size20,$Foldercount20,$TotalFile20,$allocateanddate20,$TotalDuration20 -join ','
$Balikpapan,$Size21,$Foldercount21,$TotalFile21,$allocateanddate21,$TotalDuration21 -join ','
$Siantar,$Size22,$Foldercount22,$TotalFile22,$allocateanddate22,$TotalDuration22 -join ','
$Padangsidempuan,$Size23,$Foldercount23,$TotalFile23,$allocateanddate23,$TotalDuration23 -join ','
$Pontianak,$Size24,$Foldercount24,$TotalFile24,$allocateanddate24,$TotalDuration24 -join ','
$Banjarmasin,$Size25,$Foldercount25,$TotalFile25,$allocateanddate25,$TotalDuration25 -join ','
$Malang,$Size26,$Foldercount26,$TotalFile26,$allocateanddate26,$TotalDuration26 -join ','
$Purwokerto,$Size27,$Foldercount27,$TotalFile27,$allocateanddate27,$TotalDuration27 -join ','
$Sukabumi,$Size28,$Foldercount28,$TotalFile28,$allocateanddate28,$TotalDuration28 -join ','
$Jember,$Size29,$Foldercount29,$TotalFile29,$allocateanddate29,$TotalDuration29 -join ','
$Duri,$Size30,$Foldercount30,$TotalFile30,$allocateanddate30,$TotalDuration30 -join ','
$Karawang,$Size31,$Foldercount31,$TotalFile31,$allocateanddate31,$TotalDuration31 -join ','
$Cirebon,$Size32,$Foldercount32,$TotalFile32,$allocateanddate32,$TotalDuration32 -join ','
$Centraljakarta1,$Size33,$Foldercount33,$TotalFile33,$allocateanddate33,$TotalDuration33 -join ','
$Tangerang,$Size34,$Foldercount34,$TotalFile34,$allocateanddate34,$TotalDuration34 -join ','
$Medan2,$Size35,$Foldercount35,$TotalFile35,$allocateanddate35,$TotalDuration35 -join ','
$Bekasi,$Size36,$Foldercount36,$TotalFile36,$allocateanddate36,$TotalDuration36 -join ','

######################## Script for copy contents for convert to ASCII #########################################
$logfile_status = "D:\STATUSLOG\BPKB-StatusLogtoDG.log"
Get-Clipboard | Out-File -FilePath $logfile_status -Encoding ascii -Append