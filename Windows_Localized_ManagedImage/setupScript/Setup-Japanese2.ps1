
#Set UI Language
Set-WinUILanguageOverride -Language ja-JP
$date = Get-Date
Write-Output "Set UI Language:"$date >> c:\buildCheckPoint\azureImageBuilder.txt

#Set Time/Date Format
Set-WinCultureFromLanguageListOptOut -OptOut $False
$date = Get-Date
Write-Output "Set Time/Date Format:"$date >> c:\buildCheckPoint\azureImageBuilder.txt

#Set Location
Set-WinHomeLocation -GeoId 0x7A
$date = Get-Date
Write-Output "Set Location:"$date >> c:\buildCheckPoint\azureImageBuilder.txt

#Set System Locale
Set-WinSystemLocale -SystemLocale ja-JP
$date = Get-Date
Write-Output "Set System Locale:$date" >> c:\buildCheckPoint\azureImageBuilder.txt

#Set Timezone
Set-TimeZone -Id "Tokyo Standard Time"
$date = Get-Date
Write-Output "Set Timezone:"$date >> c:\buildCheckPoint\azureImageBuilder.txt