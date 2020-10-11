<#
.Synopsis
  "Delete Persistant History"
.Description
	Delete Complete History
#>
function clhist{
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
}
Export-ModuleMember -Function clhist
# SIG # Begin signature block
# MIIFzQYJKoZIhvcNAQcCoIIFvjCCBboCAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUxK84KCX+ptoF1tOlnZ00bDOR
# wzGgggNXMIIDUzCCAjugAwIBAgIQQWtTFscmBZ9PVH+cVdRhCzANBgkqhkiG9w0B
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
# BgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAjBgkqhkiG9w0BCQQxFgQU2Fr8YWN9
# FkZ0JLVd//0JrWx2Vr4wDQYJKoZIhvcNAQEBBQAEggEAN404Z+Lp/2oZzMqWzqfW
# YIa9862CyItSTTxuDSD/7QEkIoCnAbp+Aj0NN+Ii8jyNTNjr+JrCy7TO7/vzwPCE
# wfznmQXWuUozlFiyGEJFfJ71CYhmHS5l+xX3Hn4RK6KlbNgohyz7j6WVhU1mwkNj
# NGTufatogVWpu0ViYOHCY80LktEN2Rc30R8XpscyWGUgQJI4VnohZi1UHxTCrDNP
# NcKYG2G5nw0FF8XzYd3qmAyFbn7esFjdmM5Yz2otpUSPcPraFVhnWsg/W0RIj5j7
# kTyVyzbHGmPKowKyy/B4EhEg6TbdZdZe4wvbrjbsaxL90n+D5Uiv1gSSYO+Yv17W
# Yw==
# SIG # End signature block
