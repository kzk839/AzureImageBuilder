
#Download Language Pack ISO
Invoke-WebRequest -Uri https://software-download.microsoft.com/download/pr/17763.1.180914-1434.rs5_release_SERVERLANGPACKDVD_OEM_MULTI.iso -OutFile C:\lang.iso
$date = Get-Date
Write-Output "DownLoad ISO:"$date >> c:\buildCheckPoint\azureImageBuilder.txt

#Mount ISO
$mountResult = Mount-DiskImage C:\lang.iso -PassThru
$date = Get-Date
Write-Output "Mount ISO:"$date >> c:\buildCheckPoint\azureImageBuilder.txt

#Get Mounted Drive Letter
$driveLetter = ($mountResult | Get-Volume).DriveLetter
$date = Get-Date
Write-Output "Get Drive Letter:"$date >> c:\buildCheckPoint\azureImageBuilder.txt

#Create Language Pack Path
$lppath = $driveLetter + ":\x64\langpacks\Microsoft-Windows-Server-Language-Pack_x64_ja-jp.cab"
$date = Get-Date
Write-Output "Create Language Pack Path:"$date >> c:\buildCheckPoint\azureImageBuilder.txt

#Install Language Pack
C:\windows\system32\Lpksetup.exe /i ja-JP /r /s /p $lppath

#Wait Install Process
Wait-Process -Name lpksetup
$date = Get-Date
Write-Output "Install Language Pack:"$date >> c:\buildCheckPoint\azureImageBuilder.txt
