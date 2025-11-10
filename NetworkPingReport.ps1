# NetworkPingReport.ps1
# Pings IP addresses from 192.168.1.1 to 192.168.1.10

for ($i=1; $i -le 10; $i++) {
    $ip = "192.168.1.$i"
    if (Test-Connection -ComputerName $ip -Count 1 -Quiet) {
        Write-Output "$ip is reachable"
    } else {
        Write-Output "$ip is NOT reachable"
    }
}

#Checks if devices on your local network are online.
#it ping multiple devices.
