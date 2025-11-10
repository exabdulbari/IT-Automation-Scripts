# TempCleaner.ps1
# Deletes temporary files from Windows and user temp folders

$tempPaths = @("C:\Windows\Temp", "$env:TEMP")

foreach ($path in $tempPaths) {
    Write-Output "Cleaning $path ..."
    Remove-Item "$path\*" -Recurse -Force -ErrorAction SilentlyContinue
}

Write-Output "Temp cleanup completed!"

#Deletes unnecessary temporary files safely.
