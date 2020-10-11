[string]$hashfordl="FD708234C5DF26A95F5FB999F83F35EB70DD7F34531A5C00D3DC0857D7B9FCBA"
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