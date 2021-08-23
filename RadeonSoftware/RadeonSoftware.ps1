$installloc = "C:\Program Files\AMD\CNext\CNext"
$installxml = "$($installloc)\RadeonSoftware.VisualElementsManifest.xml" -replace " "*27
$install150logo = "$($installloc)\Assets\150x150Logo.png" -replace " "*27
$install70Logo = "$($installloc)\Assets\70x70Logo.png" -replace " "*27
wget 'https://raw.githubusercontent.com/AlperenYLDM/BetterLookWin10StartMenuShortcuts/main/RadeonSoftware/RadeonSoftware.VisualElementsManifest.xml' -OutFile $installxml
New-Item -Path "$($installloc)" -Name "Assets" -ItemType "directory" | Out-Null
wget 'https://github.com/AlperenYLDM/BetterLookWin10StartMenuShortcuts/raw/main/RadeonSoftware/Assets/150x150Logo.png' -OutFile $install150logo
wget 'https://github.com/AlperenYLDM/BetterLookWin10StartMenuShortcuts/raw/main/RadeonSoftware/Assets/70x70Logo.png' -OutFile $install70Logo
(ls "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\AMD Radeon Software\AMD Radeon Software.lnk").lastwritetime = get-date