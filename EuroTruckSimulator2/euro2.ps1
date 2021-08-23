$installloc = Get-ItemProperty 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App *' | Select-Object InstallLocation | Format-Table -AutoSize | findstr '\steamapps\common\Euro Truck Simulator 2'
$installloc = "$($installloc)\bin\win_x64"
$installxml = "$($installloc)\eurotrucks2.VisualElementsManifest.xml"
$install150logo = "$($installloc)\Assets\150x150Logo.png"
$install70Logo = "$($installloc)\Assets\70x70Logo.png"
wget 'https://raw.githubusercontent.com/AlperenYLDM/BetterLookWin10StartMenuShortcuts/main/EuroTruckSimulator2/eurotrucks2.VisualElementsManifest.xml' -OutFile $installxml
New-Item -Path "$($installloc)" -Name "Assets" -ItemType "directory" | Out-Null
wget 'https://github.com/AlperenYLDM/BetterLookWin10StartMenuShortcuts/raw/main/EuroTruckSimulator2/Assets/150x150Logo.png' -OutFile $install150logo
wget 'https://github.com/AlperenYLDM/BetterLookWin10StartMenuShortcuts/raw/main/EuroTruckSimulator2/Assets/70x70Logo.png' -OutFile $install70Logo
(ls "C:\Users\YıldırımPc\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Euro Truck Simulator 2.lnk").lastwritetime = get-date