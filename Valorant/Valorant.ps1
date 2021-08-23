$installloc = Get-ItemProperty HKLM:\SOFTWARE\Classes\riotclient\DefaultIcon | Select-Object "(default)" | Format-Table -AutoSize | findstr Riot
$installloc = $installloc.Replace('"','')
$installloc = $installloc.Replace("Riot Games\VALORANT\Riot Client\RiotClientServices.exe,0","Riot Games\VALORANT\Riot Client")
$installxml = "$($installloc)\RiotClientServices.VisualElementsManifest.xml"
$install150logo = "$($installloc)\Assets\150x150Logo.png"
$install70Logo = "$($installloc)\Assets\70x70Logo.png"
wget 'https://raw.githubusercontent.com/AlperenYLDM/BetterLookWin10StartMenuShortcuts/main/Valorant/RiotClientServices.VisualElementsManifest.xml' -OutFile $installxml
New-Item -Path "$($installloc)" -Name "Assets" -ItemType "directory" | Out-Null
wget 'https://github.com/AlperenYLDM/BetterLookWin10StartMenuShortcuts/raw/main/Valorant/Assets/150x150Logo.png' -OutFile $install150logo
wget 'https://github.com/AlperenYLDM/BetterLookWin10StartMenuShortcuts/raw/main/Valorant/Assets/70x70Logo.png' -OutFile $install70Logo
(ls "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Riot Games\VALORANT.lnk").lastwritetime = get-date