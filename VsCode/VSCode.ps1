$installloc = "C:\Users\$($env:USERNAME)\AppData\Local\Programs\Microsoft VS Code"
$installxml = "$($installloc)\Code.VisualElementsManifest.xml"
$install150logo = "$($installloc)\Assets\150x150Logo.png"
$install70Logo = "$($installloc)\Assets\70x70Logo.png"
wget 'https://raw.githubusercontent.com/AlperenYLDM/BetterLookWin10StartMenuShortcuts/main/VsCode/Code.VisualElementsManifest.xml' -OutFile $installxml
New-Item -Path "$($installloc)" -Name "Assets" -ItemType "directory" | Out-Null
wget 'https://github.com/AlperenYLDM/BetterLookWin10StartMenuShortcuts/raw/main/VsCode/Assets/150x150Logo.png' -OutFile $install150logo
wget 'https://github.com/AlperenYLDM/BetterLookWin10StartMenuShortcuts/raw/main/VsCode/Assets/70x70Logo.png' -OutFile $install70Logo
(ls "C:\Users\YıldırımPc\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Visual Studio Code\Visual Studio Code.lnk").lastwritetime = get-date