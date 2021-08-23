$installloc = Get-ItemProperty 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App 292030' | Select-Object InstallLocation | Format-Table -AutoSize | findstr "The Witcher 3" ; $installloc = "$($installloc)\bin\x64"
$installxml = "$($installloc)\witcher3.VisualElementsManifest.xml"
$install150logo = "$($installloc)\Assets\150x150Logo.png"
$install70Logo = "$($installloc)\Assets\70x70Logo.png"
wget 'https://raw.githubusercontent.com/AlperenYLDM/BetterLookWin10StartMenuShortcuts/main/Witcher3/witcher3.VisualElementsManifest.xml' -OutFile $installxml
New-Item -Path "$($installloc)" -Name "Assets" -ItemType "directory" | Out-Null
wget 'https://github.com/AlperenYLDM/BetterLookWin10StartMenuShortcuts/raw/main/Witcher3/Assets/150x150Logo.png' -OutFile $install150logo
wget 'https://github.com/AlperenYLDM/BetterLookWin10StartMenuShortcuts/raw/main/Witcher3/Assets/70x70Logo.png' -OutFile $install70Logo
(ls "C:\Users\YıldırımPc\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Witcher 3.lnk").lastwritetime = get-date