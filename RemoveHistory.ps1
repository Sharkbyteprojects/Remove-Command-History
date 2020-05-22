write (Get-PSReadlineOption).HistorySavePath
write "Are you sure to Delete History?" "Press STRG and C to Cancel"
pause
Remove-Item (Get-PSReadlineOption).HistorySavePath
write "Will you Deactivate History?" "Press STRG and C to Cancel"
pause
Set-PSReadLineOption -HistorySaveStyle SaveNothing
Clear-History