$rg = "rg-multitier-webapp-prod"
$vmss = "vmss-webtier"

# Enable autoscale (basic example)
Add-AzAutoscaleSetting `
-ResourceGroupName $rg `
-Name "autoscale-setting" `
-TargetResourceId (Get-AzVmss -ResourceGroupName $rg -VMScaleSetName $vmss).Id `
-MinimumCapacity 1 `
-MaximumCapacity 3 `
-DefaultCapacity 2

Write-Output "Autoscale Configured"