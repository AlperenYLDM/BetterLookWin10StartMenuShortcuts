$installloc = Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* | Select-Object InstallLocation | Format-Table -AutoSize | findstr '\Epic Games\'
$installxml = "$($installloc)\EpicGamesLauncher.VisualElementsManifest.xml" -replace " "*25
$install150logo = "$($installloc)\Assets\150x150Logo.png" -replace " "*25
$install70Logo = "$($installloc)\Assets\70x70Logo.png" -replace " "*25
wget 'https://raw.githubusercontent.com/AlperenYLDM/BetterLookWin10StartMenuShortcuts/main/EpicGamesLauncher/EpicGamesLauncher.VisualElementsManifest.xml' -OutFile $installxml
New-Item -Path "$($installloc)" -Name "Assets" -ItemType "directory" | Out-Null
wget 'https://github.com/AlperenYLDM/BetterLookWin10StartMenuShortcuts/raw/main/EpicGamesLauncher/Assets/150x150Logo.png' -OutFile $install150logo
wget 'https://github.com/AlperenYLDM/BetterLookWin10StartMenuShortcuts/raw/main/EpicGamesLauncher/Assets/70x70Logo.png' -OutFile $install70Logo
(ls "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Epic Games Launcher.lnk").lastwritetime = get-date