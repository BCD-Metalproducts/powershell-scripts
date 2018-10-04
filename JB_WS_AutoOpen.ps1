Start-Job -ScriptBlock {
    While (1 -ne 0){
        Start-Sleep -Seconds 5
        If (-not(Get-Process DCStation -ea silentlycontinue | select *| Where-Object {$_.MainWindowHandle -ne 0})){
            Start-Process -FilePath "C:Program Files (x86)\jobBOSS\Workstation Driver\DCStation.exe"
        }
    }
} | Wait-Job
