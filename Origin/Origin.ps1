$installloc = Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* | Select-Object InstallLocation | Format-Table -AutoSize | findstr Origin
$installxml = "$($installloc)\Origin.VisualElementsManifest.xml" -replace " "*27
$install150logo = "$($installloc)\Assets\150x150Logo.png" -replace " "*27
$install70Logo = "$($installloc)\Assets\70x70Logo.png" -replace " "*27
wget 'https://raw.githubusercontent.com/AlperenYLDM/BetterLookWin10StartMenuShortcuts/main/Origin/Origin.VisualElementsManifest.xml' -OutFile $installxml
New-Item -Path "$($installloc)" -Name "Assets" -ItemType "directory" | Out-Null
wget 'https://github.com/AlperenYLDM/BetterLookWin10StartMenuShortcuts/raw/main/Origin/Assets/150x150Logo.png' -OutFile $install150logo
wget 'https://github.com/AlperenYLDM/BetterLookWin10StartMenuShortcuts/raw/main/Origin/Assets/70x70Logo.png' -OutFile $install70Logo
(ls "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Origin\Origin.lnk").lastwritetime = get-date