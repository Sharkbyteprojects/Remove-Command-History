[string]$hashfordl="69DD9E1B0C85BA07B7427112A5EC3444B64EE4A2621C35AF8DE2F156DEC7A941"
[string]$uris="https://raw.githubusercontent.com/Sharkbyteprojects/Remove-Command-History/master/win/assets/clhist.psm1"
[string]$instdir=$HOME + "\Documents\WindowsPowerShell\Modules\clhist"
Write-Output "Installing clhist" "<c>Sharkbyteprojects"
Write-Output "AFTER INSTALL USE clhist command!"
Write-Output "Install at $($instdir)" "Create dir"
New-Item -ItemType directory -Path $instdir
Write-Output "Downloading"
[string]$filepath=$instdir+"/clhist.psm1"
Invoke-WebRequest -Uri $uris -OutFile $filepath
Write-Output "Verify"
[string]$hashsss=(Get-FileHash -path $filepath -Algorithm "SHA256").Hash
Write-Output $hashsss
if ($hashfordl -eq $hashsss){
    Write-Output "Registring"
    Import-Module "clhist"
    Write-Output "Try clhist now"
    return 0
}
else{
    Write-Warning "Verification Failed!"
    Write-Warning "Rolling back Changes"
    Write-Warning "Remove File"
    Remove-Item $filepath
    Write-Warning "Remove Dir"
    Remove-Item $instdir
    Write-Warning "Nothing Changed"
    Write-Warning "Try the Command again"
    return -1
}
# SIG # Begin signature block
# MIIFzQYJKoZIhvcNAQcCoIIFvjCCBboCAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUHqniHAHVnQu49bBLIRoQMRXF
# CiegggNXMIIDUzCCAjugAwIBAgIQQWtTFscmBZ9PVH+cVdRhCzANBgkqhkiG9w0B
# AQsFADArMSkwJwYDVQQDDCBzaGFya2J5dGVwcm9qZWN0c0Bwcm90b25tYWlsLmNv
# bTAeFw0yMDEwMTAxODMwMzBaFw0yMTEwMTAxODUwMzBaMCsxKTAnBgNVBAMMIHNo
# YXJrYnl0ZXByb2plY3RzQHByb3Rvbm1haWwuY29tMIIBIjANBgkqhkiG9w0BAQEF
# AAOCAQ8AMIIBCgKCAQEAp3dqha5IfpZWYsCpPwmBA/noVjScB+4mZkqEH4XLQ/8C
# l6Kx1V3VGPoeaQPYd4Loof3C1Ms2r57BGM78YKj0Qhxte4RDU6Ylt+J5n89/Kv/j
# 5SXrhKk+qXcHyBusI79f1Y++3iWkGBLLx/fZ02Bs+2pdNzHP2xtyC5FtEZiaxq+2
# aK4LNNBYKV3OcOcEfyILDkb8YzA+uX1+BJwYAjszbnZpriF7YIxBOq1QJVsCAoPs
# drggNs3HIckIhv3gCoZU9A80ixN+eBFV21x5ToxKhTZG7Lor15ElZUd7BH4W8fk+
# DyuGYtvUmh+nsb7Czk8ShvLsCXuxQmniDcIzc4021QIDAQABo3MwcTAOBgNVHQ8B
# Af8EBAMCB4AwEwYDVR0lBAwwCgYIKwYBBQUHAwMwKwYDVR0RBCQwIoIgc2hhcmti
# eXRlcHJvamVjdHNAcHJvdG9ubWFpbC5jb20wHQYDVR0OBBYEFL8kStml5CdnIsRn
# cMFeqUV/+68pMA0GCSqGSIb3DQEBCwUAA4IBAQAt+I+RL4Vv3mS3qME//a/fg0/T
# cEjXe9WkgIU/+FVxNsQATrfVqEV60G2kEU1wMGSbC5mr6qwAr/KRip9KO/w7WYQ4
# vxPfFDDjl4jM/6gxSesFfvPkwy/nUoxZgdi6Ym13e6XRP9AhXB2ZO+xMlpRt5I3b
# 5LXbbgWeD84iNuwpw6ouOW9W70ptV68bkYwvw7o9jYI93jGveGNwsptLLnwKF4n6
# kFRVE6GWYiMQwUJvQU8yi67SXjSKKdHSEbswhRuBamsZivOYFKZRT2I+cMpPkK7q
# iesWzF/PXvyEfrifYRrKR8d5kaTzexN5TSSEiquhEj1lggmcla4W24kbLjufMYIB
# 4DCCAdwCAQEwPzArMSkwJwYDVQQDDCBzaGFya2J5dGVwcm9qZWN0c0Bwcm90b25t
# YWlsLmNvbQIQQWtTFscmBZ9PVH+cVdRhCzAJBgUrDgMCGgUAoHgwGAYKKwYBBAGC
# NwIBDDEKMAigAoAAoQKAADAZBgkqhkiG9w0BCQMxDAYKKwYBBAGCNwIBBDAcBgor
# BgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAjBgkqhkiG9w0BCQQxFgQULwtCEDwo
# tI1Gg+eLob6S+hSajmkwDQYJKoZIhvcNAQEBBQAEggEAb4Lji3U52OA5ke1wygE2
# 9gko5Y99EDYW6QY6+lVP1qkC+WtDOU1JbP7tPVyjCWv9bqxwu8zl2euyThMXT9TP
# jGJpFwJ9upbcf48N8N7TPVKC6C+pBLSn2+WnMr1IFcVkylCh67K7wr6lTGTvtVF+
# dmPUnO0+R5QKlOzhwQ8JcsRMtu0IOUJZX7WHb+S3aR8vFsI3MziZP0RXTU8UcrB0
# bKRk+kTPknAV7L/b+gl92zny1eXfrLuKGZVLk3OlmgTSQbuxw+l4cIyHSTp9Awgg
# VymSKDmFVJuQlLpUia5WDUxVQiFppbZ75ImMdwtjhE8brB5z8/5IgpW5ImWeR9Sz
# mg==
# SIG # End signature block
