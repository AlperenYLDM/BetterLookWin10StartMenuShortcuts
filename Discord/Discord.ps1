$installloc = "C:\ProgramData\$env:UserName\Discord"
$installxml = "$($installloc)\Update.VisualElementsManifest.xml" -replace " "*25
$install150logo = "$($installloc)\Assets\150x150Logo.png" -replace " "*25
$install70Logo = "$($installloc)\Assets\70x70Logo.png" -replace " "*25
wget 'https://raw.githubusercontent.com/AlperenYLDM/BetterLookWin10StartMenuShortcuts/main/Discord/Update.VisualElementsManifest.xml' -OutFile $installxml
New-Item -Path "$($installloc)" -Name "Assets" -ItemType "directory" | Out-Null
wget 'https://github.com/AlperenYLDM/BetterLookWin10StartMenuShortcuts/raw/main/Discord/Assets/150x150Logo.png' -OutFile $install150logo
wget 'https://github.com/AlperenYLDM/BetterLookWin10StartMenuShortcuts/raw/main/Discord/Assets/70x70Logo.png' -OutFile $install70Logo
(ls "C:\Users\YıldırımPc\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Discord Inc\Discord.lnk").lastwritetime = get-date