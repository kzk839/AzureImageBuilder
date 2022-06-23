
#Download Language Pack ISO
Invoke-WebRequest -Uri https://software-download.microsoft.com/download/pr/17763.1.180914-1434.rs5_release_SERVERLANGPACKDVD_OEM_MULTI.iso -OutFile C:\lang.iso

#Mount ISO
$mountResult = Mount-DiskImage C:\lang.iso -PassThru

#Get Mounted Drive Letter
$driveLetter = ($mountResult | Get-Volume).DriveLetter

#Create Language Pack Path
$lppath = $driveLetter + ":\x64\langpacks\Microsoft-Windows-Server-Language-Pack_x64_ja-jp.cab"

#Install Language Pack
C:\windows\system32\Lpksetup.exe /i ja-JP /r /s /p $lppath

#Wait Install Process
Wait-Process -Name lpksetup
