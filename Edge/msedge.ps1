$installloc = "C:\Program Files (x86)\Microsoft\Edge\Application"
$installxml = "$($installloc)\msedge.VisualElementsManifest.xml" -replace " "*25
$install150logo = "$($installloc)\Assets\150x150Logo.png" -replace " "*25
$install70Logo = "$($installloc)\Assets\70x70Logo.png" -replace " "*25
wget 'https://raw.githubusercontent.com/AlperenYLDM/BetterLookWin10StartMenuShortcuts/main/Edge/msedge.VisualElementsManifest.xml' -OutFile $installxml
New-Item -Path "$($installloc)" -Name "Assets" -ItemType "directory" | Out-Null
wget 'https://github.com/AlperenYLDM/BetterLookWin10StartMenuShortcuts/raw/main/Edge/Assets/150x150Logo.png' -OutFile $install150logo
wget 'https://github.com/AlperenYLDM/BetterLookWin10StartMenuShortcuts/raw/main/Edge/Assets/70x70Logo.png' -OutFile $install70Logo
(ls "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Microsoft Edge.lnk").lastwritetime = get-date