# DiskCheck.ps1
# Checks free space on all drives and displays the result in GB

Get-PSDrive -PSProvider FileSystem | ForEach-Object {
    $freeGB = [math]::Round($_.Free/1GB,2)
    $totalGB = [math]::Round(($_.Used + $_.Free)/1GB,2)
    Write-Output "Drive $($_.Name): $freeGB GB free out of $totalGB GB total"
}

#Lists all drives with free and total space in GB.
