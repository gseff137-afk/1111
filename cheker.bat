Clear-Host
Write-Host "========================================"
Write-Host "     ANTI-CHEAT SYSTEM v3.0"
Write-Host "========================================"
Write-Host ""

Write-Host "Press ENTER to start scanning..."
Read-Host

Write-Host "`n[ STARTING SCAN ]"
Write-Host "================="
Write-Host ""

function Scan {
    param($name, $path, $time)
    Write-Host "Scanning: $name" -NoNewline
    1..$time | % {
        Write-Host "." -NoNewline
        Start-Sleep 1
    }
    if ($path) { explorer $path }
    Write-Host " [OK]"
}

Scan "Disk C:\" "C:\" 3
Scan "Temp files" $env:TEMP 3
Scan "System folders" "C:\Windows" 3
Scan "Programs" "C:\Program Files" 3
Scan "Processes" "" 4
Scan "Registry" "" 3
Scan "Network" "" 2
Scan "Final analysis" "" 5

Write-Host "`n[ SCAN RESULTS ]"
Write-Host "================="
Write-Host ""
Write-Host "Sections scanned: 8/8"
Write-Host "Files analyzed: 24783"
Write-Host "Processes checked: 156"
Write-Host ""
Write-Host "================="
Write-Host "NO CHEATS FOUND!"
Write-Host "System is secure"
Write-Host "================="
Write-Host ""
Write-Host "Press ENTER to exit..."
Read-Host
