
#Set User Language
Set-WinUserLanguageList -LanguageList ja-JP,en-US -Force

#Set Input Language
Set-WinDefaultInputMethodOverride -InputTip "0411:00000411"

#Set MS-IME Input
Set-WinLanguageBarOption -UseLegacySwitchMode -UseLegacyLanguageBar