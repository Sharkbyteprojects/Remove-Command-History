[string]$hashfordl="CACAF33D89DEFE0C308FFBB39E1D5730EFFA80941CF845A9C43A3AE57C5F6E67"
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
Write-Output "  SHA256 of Download $($hashsss)"
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
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUTVxQ0aeocapx3GiTftI+9D8I
# gmigggNXMIIDUzCCAjugAwIBAgIQQWtTFscmBZ9PVH+cVdRhCzANBgkqhkiG9w0B
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
# BgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAjBgkqhkiG9w0BCQQxFgQUSMgSmqH8
# HJmKT8wn5YOBsWSEpv8wDQYJKoZIhvcNAQEBBQAEggEAg9zAjzrwDQrC3eU3ayr1
# e/RirR7ZEGb5LuROzJZFhHQS4K6SvFAu/0bY0JG3HkMdKCHV2/0zs/uJb6x6EPy1
# hb5lZwqoeLyTM4sRvHTBG4BLuJbDgrp6EJmQH0aLOElzQVueffpU86IdUb7wW7Vs
# hWHiklqtzlOoPbSlzClLo50P7P+2fY65o3cl6cdj+i838jrmRFzHRSkfQ3pez4pH
# YUuzQEM5JpCsMFIssZCTvF5n3/KRsVFkPfv2DGrX8tWpV5GAbfHZEmeckoyLFZVo
# Ijpz4DE8RTBmVXMP8eahE8rmYfPX3BRWyPBgN8OjtOC4YbU/ErqHiUPZXD8ea5RK
# Cg==
# SIG # End signature block
