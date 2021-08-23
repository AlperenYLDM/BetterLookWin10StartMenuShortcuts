$installloc = "C:\Users\$($env:USERNAME)\AppData\Local\NVIDIA Corporation\GeForceNOW\CEF"
$installxml = "$($installloc)\GeForceNOW.VisualElementsManifest.xml"
$install150logo = "$($installloc)\Assets\150x150Logo.png"
$install70Logo = "$($installloc)\Assets\70x70Logo.png"
wget 'https://raw.githubusercontent.com/AlperenYLDM/BetterLookWin10StartMenuShortcuts/main/GFN/GeForceNOW.VisualElementsManifest.xml' -OutFile $installxml
New-Item -Path "$($installloc)" -Name "Assets" -ItemType "directory" | Out-Null
wget 'https://github.com/AlperenYLDM/BetterLookWin10StartMenuShortcuts/raw/main/GFN/Assets/150x150Logo.png' -OutFile $install150logo
wget 'https://github.com/AlperenYLDM/BetterLookWin10StartMenuShortcuts/raw/main/GFN/Assets/70x70Logo.png' -OutFile $install70Logo
Rename-Item -Path "C:\Users\YıldırımPc\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\NVIDIA GeForce NOW.lnk" -NewName "Geforce NOW.lnk"
(ls "C:\Users\YıldırımPc\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\GeForce NOW.lnk").lastwritetime = get-date