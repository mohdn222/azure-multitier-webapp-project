$rg="rg-multitier-webapp-prod"
$location="uaenorth"

# Create NSGs
$appgwNSG = New-AzNetworkSecurityGroup `
-ResourceGroupName $rg `
-Location $location `
-Name "nsg-appgateway"

$webNSG = New-AzNetworkSecurityGroup `
-ResourceGroupName $rg `
-Location $location `
-Name "nsg-webtier"

$dbNSG = New-AzNetworkSecurityGroup `
-ResourceGroupName $rg `
-Location $location `
-Name "nsg-database"

Write-Output "NSGs Created Successfully"