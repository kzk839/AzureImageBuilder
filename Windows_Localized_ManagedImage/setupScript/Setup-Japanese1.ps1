
#Set User Language
Set-WinUserLanguageList -LanguageList ja-JP,en-US -Force
$date = Get-Date
Write-Output "Set User Language:"$date >> c:\buildCheckPoint\azureImageBuilder.txt

#Set Input Language
Set-WinDefaultInputMethodOverride -InputTip "0411:00000411"
$date = Get-Date
Write-Output "Set Input Language:"$date >> c:\buildCheckPoint\azureImageBuilder.txt

#Set MS-IME Input
Set-WinLanguageBarOption -UseLegacySwitchMode -UseLegacyLanguageBar
$date = Get-Date
Write-Output "Set MS-IME Input:"$date >> c:\buildCheckPoint\azureImageBuilder.txt