
#Set UI Language
Set-WinUILanguageOverride -Language ja-JP

#Set Time/Date Format
Set-WinCultureFromLanguageListOptOut -OptOut $False

#Set Location
Set-WinHomeLocation -GeoId 0x7A

#Set System Locale
Set-WinSystemLocale -SystemLocale ja-JP

#Set Timezone
Set-TimeZone -Id "Tokyo Standard Time"