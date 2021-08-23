$installloc = Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* | Select-Object InstallLocation | Format-Table -AutoSize | findstr Rockstar
$installxml = "$($installloc)\LauncherPatcher.VisualElementsManifest.xml" -replace " "*16
$install150logo = "$($installloc)\Assets\150x150Logo.png" -replace " "*16
$install70Logo = "$($installloc)\Assets\70x70Logo.png" -replace " "*16
wget 'https://raw.githubusercontent.com/AlperenYLDM/BetterLookWin10StartMenuShortcuts/main/RockstarGamesLauncher/LauncherPatcher.VisualElementsManifest.xml' -OutFile $installxml
New-Item -Path "$($installloc)" -Name "Assets" -ItemType "directory" | Out-Null
wget 'https://github.com/AlperenYLDM/BetterLookWin10StartMenuShortcuts/raw/main/RockstarGamesLauncher/150x150Logo.png' -OutFile $install150logo
wget 'https://github.com/AlperenYLDM/BetterLookWin10StartMenuShortcuts/raw/main/RockstarGamesLauncher/70x70Logo.png' -OutFile $install70Logo
(ls "C:\Users\YıldırımPc\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Rockstar Games\Rockstar Games Launcher.lnk").lastwritetime = get-date