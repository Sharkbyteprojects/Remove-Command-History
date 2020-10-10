[string]$filepath=(Get-PSReadlineOption).HistorySavePath
[string]$warn="File dosn't Exist!"
[string]$errors="Fail in read File"
[string]$completed="File Removed!"
Write-Output "Remove HISTORY" "Automation Version" "<c> Sharkbyteprojects" "Path:" $filepath ""
if (Test-Path -path $filepath){
    try {
        Remove-Item $filepath
        Write-Output $completed
    } catch {
        Write-Error $errors
    }
}else{
    Write-Warning $warn
}

# SIG # Begin signature block
# MIIFzQYJKoZIhvcNAQcCoIIFvjCCBboCAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUUKh7geYg1T7f5mVv2t5Ozfor
# 5BSgggNXMIIDUzCCAjugAwIBAgIQQWtTFscmBZ9PVH+cVdRhCzANBgkqhkiG9w0B
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
# BgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAjBgkqhkiG9w0BCQQxFgQU2EsBQnnP
# 6QbCxOvHTR6k+acRtcowDQYJKoZIhvcNAQEBBQAEggEAIQO66vr/lHPhAw1xQNiL
# wMk3JgFwK2cAL3MWbQaqwZOXGXyTi84RmzDgcNyjYtVuOQxsXAeFxfnuyB+toY19
# 9WhghhUIp3AX6xHh9hr7hyh8Ha3XrUsVIYw+W72rPy1xZK5udZNQkTkBHUtaHtHI
# Hv4CDJ+1uqZg+uG8vzXrKW3HUfBWxIKqFpUEMC7Xw/uA5GNWP07uMRrGsUqUUFP3
# LgpLCzp7gQXDfhGwCmjs91+F0wX5yVLUggG5a6EejLkUTfL+9mC15EGbAr87WOQ3
# gC4H9WwoEnAm80yN3K+qwGdxepobe5yMWtxrZDoB9Gl6nVfXNm6zeRxEWzKzYLKR
# vg==
# SIG # End signature block
