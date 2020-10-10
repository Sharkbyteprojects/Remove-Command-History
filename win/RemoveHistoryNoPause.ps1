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
