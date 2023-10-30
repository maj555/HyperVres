# Connect to the Hyper-V host
$HyperVHost = "hostname"


$VMs = Get-VM




foreach ($VM in $VMs) {



$VMs = Get-VM


foreach ($VM in $VMs) {
    $VMName = $VM.Name
    
    # Check the status of the VM
    $VMStatus = Get-VM -Name $VMName | Select-Object -ExpandProperty State

    if ($VMStatus -eq "Off") {
        Write-Host "$VMName is already shut down."
    } else {
        Write-Host "Shutting down $VMName"
        
        # Shutdown the VM
        Stop-VM -Name $VMName -Force
        Start-Sleep -Seconds 10  
        
        
    
        }
       }
        }
