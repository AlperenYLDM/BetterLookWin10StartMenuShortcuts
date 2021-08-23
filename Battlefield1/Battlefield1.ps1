$installloc = Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* | Select-Object InstallLocation | Format-Table -AutoSize | findstr 'Battlefiled 1'
$installxml = "$($installloc)bf1.VisualElementsManifest.xml" -replace " "*25
$install150logo = "$($installloc)Assets\150x150Logo.png" -replace " "*25
$install70Logo = "$($installloc)Assets\70x70Logo.png" -replace " "*25
wget 'https://raw.githubusercontent.com/AlperenYLDM/BetterLookWin10StartMenuShortcuts/main/Battlefield1/bf1.VisualElementsManifest.xml' -OutFile $installxml
New-Item -Path "$($installloc)" -Name "Assets" -ItemType "directory" | Out-Null
wget 'https://github.com/AlperenYLDM/BetterLookWin10StartMenuShortcuts/raw/main/Battlefield1/Assets/150x150Logo.png' -OutFile $install150logo
wget 'https://github.com/AlperenYLDM/BetterLookWin10StartMenuShortcuts/raw/main/Battlefield1/Assets/70x70Logo.png' -OutFile $install70Logo
(ls "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Battlefield 1.lnk").lastwritetime = get-date
                         