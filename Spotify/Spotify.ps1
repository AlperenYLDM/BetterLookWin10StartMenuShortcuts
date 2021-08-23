$installloc = "C:\Users\$($env:USERNAME)\AppData\Roaming\Spotify"
$installxml = "$($installloc)\Spotify.VisualElementsManifest.xml"
$install150logo = "$($installloc)\Assets\150x150Logo.png"
$install70Logo = "$($installloc)\Assets\70x70Logo.png"
wget 'https://raw.githubusercontent.com/AlperenYLDM/BetterLookWin10StartMenuShortcuts/main/Spotify/Spotify.VisualElementsManifest.xml' -OutFile $installxml
New-Item -Path "$($installloc)" -Name "Assets" -ItemType "directory" | Out-Null
wget 'https://github.com/AlperenYLDM/BetterLookWin10StartMenuShortcuts/raw/main/Spotify/Assets/150x150Logo.png' -OutFile $install150logo
wget 'https://github.com/AlperenYLDM/BetterLookWin10StartMenuShortcuts/raw/main/Spotify/Assets/70x70Logo.png' -OutFile $install70Logo
(ls "C:\Users\YıldırımPc\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Spotify.lnk").lastwritetime = get-date