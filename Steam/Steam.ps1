$installloc = "C:\Program Files (x86)\Steam"
$installxml = "$($installloc)\steam.VisualElementsManifest.xml" -replace " "*16
$install150logo = "$($installloc)\Assets\150x150Logo.png" -replace " "*16
$install70Logo = "$($installloc)\Assets\70x70Logo.png" -replace " "*16
wget 'https://raw.githubusercontent.com/AlperenYLDM/BetterLookWin10StartMenuShortcuts/main/Steam/steam.VisualElementsManifest.xml' -OutFile $installxml
New-Item -Path "$($installloc)" -Name "Assets" -ItemType "directory" | Out-Null
wget 'https://github.com/AlperenYLDM/BetterLookWin10StartMenuShortcuts/raw/main/Steam/Assets/150x150Logo.png' -OutFile $install150logo
wget 'https://github.com/AlperenYLDM/BetterLookWin10StartMenuShortcuts/raw/main/Steam/Assets/70x70Logo.png' -OutFile $install70Logo
(ls "C:\Users\YıldırımPc\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Steam\Steam.lnk").lastwritetime = get-date