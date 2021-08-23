$installloc = Get-ItemProperty HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\* | Select-Object InstallLocation | Format-Table -AutoSize | findstr 'CPUID'
$installxml = "$($installloc)HWMonitor.VisualElementsManifest.xml" -replace " "*23
$install150logo = "$($installloc)Assets\150x150Logo.jpg" -replace " "*23
$install70Logo = "$($installloc)Assets\70x70Logo.jpg" -replace " "*23
wget 'https://raw.githubusercontent.com/AlperenYLDM/BetterLookWin10StartMenuShortcuts/main/HwMonitor/HWMonitor.VisualElementsManifest.xml' -OutFile $installxml
New-Item -Path "$($installloc)" -Name "Assets" -ItemType "directory" | Out-Null
wget 'https://github.com/AlperenYLDM/BetterLookWin10StartMenuShortcuts/raw/main/HwMonitor/Assets/150x150Logo.jpg' -OutFile $install150logo
wget 'https://github.com/AlperenYLDM/BetterLookWin10StartMenuShortcuts/raw/main/HwMonitor/Assets/70x70Logo.jpg' -OutFile $install70Logo
(ls "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\HWMonitor\HWMonitor.lnk").lastwritetime = get-date