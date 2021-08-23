$installloc = Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* | Select-Object InstallLocation | Format-Table -AutoSize | findstr Adobe
$installloc = "$($installloc)\Adobe Audition 2021" -replace " "*34
$installxml = "$($installloc)\Adobe Audition.VisualElementsManifest.xml" -replace " "*34
$install150logo = "$($installloc)\Assets\150x150Logo.png" -replace " "*34
$install70Logo = "$($installloc)\Assets\70x70Logo.png" -replace " "*34
wget 'https://raw.githubusercontent.com/AlperenYLDM/BetterLookWin10StartMenuShortcuts/main/Audition/Adobe-Audition.VisualElementsManifest.xml' -OutFile $installxml
New-Item -Path "$($installloc)" -Name "Assets" -ItemType "directory" | Out-Null
wget 'https://github.com/AlperenYLDM/BetterLookWin10StartMenuShortcuts/raw/main/Audition/Assets/150x150Logo.png' -OutFile $install150logo
wget 'https://github.com/AlperenYLDM/BetterLookWin10StartMenuShortcuts/raw/main/Audition/Assets/70x70Logo.png' -OutFile $install70Logo
(ls "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe Audition 2021.lnk").lastwritetime = get-date