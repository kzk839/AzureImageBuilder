
#Set Parameter for Download
$LpUrl = "http://download.windowsupdate.com/c/msdownload/update/software/updt/2016/09/"
$LpFile = "lp_9a666295ebc1052c4c5ffbfa18368dfddebcd69a.cab"
$LpTemp = "C:\LpTemp.cab"

#Set Language List
Set-WinUserLanguageList -LanguageList ja-JP,en-US -Force
$date = Get-Date
Write-Output "Set Language List:"$date >> c:\buildCheckPoint\azureImageBuilder.txt

#Get Language Pack
Start-BitsTransfer -Source $LpUrl$LpFile -Destination $LpTemp -Priority High
$date = Get-Date
Write-Output "Get Language Pack:"$date >> c:\buildCheckPoint\azureImageBuilder.txt

#Add Cab File
Add-WindowsPackage -PackagePath $LpTemp -Online
$date = Get-Date
Write-Output "Add Cab File:"$date >> c:\buildCheckPoint\azureImageBuilder.txt

#Set Input Language
Set-WinDefaultInputMethodOverride -InputTip "0411:00000411"
$date = Get-Date
Write-Output "Set Input Language:"$date >> c:\buildCheckPoint\azureImageBuilder.txt

#Set MS-IME Input
Set-WinLanguageBarOption -UseLegacySwitchMode -UseLegacyLanguageBar
$date = Get-Date
Write-Output "Set MS-IME Input:"$date >> c:\buildCheckPoint\azureImageBuilder.txt

#Remove Language Pack
Remove-Item $LpTemp -Force
$date = Get-Date
Write-Output "Remove Language Pack:"$date >> c:\buildCheckPoint\azureImageBuilder.txt