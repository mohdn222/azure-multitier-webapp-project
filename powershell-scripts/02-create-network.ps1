# Variables
$rg = "rg-multitier-webapp-prod"
$location = "uaenorth"

$vnetName = "vnet-multitier-prod"

# Create Virtual Network
$vnet = New-AzVirtualNetwork `
-ResourceGroupName $rg `
-Location $location `
-Name $vnetName `
-AddressPrefix "10.0.0.0/16"

# Create Subnets

Add-AzVirtualNetworkSubnetConfig `
-Name "appgateway-subnet" `
-VirtualNetwork $vnet `
-AddressPrefix "10.0.1.0/24"

Add-AzVirtualNetworkSubnetConfig `
-Name "web-subnet" `
-VirtualNetwork $vnet `
-AddressPrefix "10.0.2.0/24"

Add-AzVirtualNetworkSubnetConfig `
-Name "database-subnet" `
-VirtualNetwork $vnet `
-AddressPrefix "10.0.3.0/24"

Add-AzVirtualNetworkSubnetConfig `
-Name "AzureBastionSubnet" `
-VirtualNetwork $vnet `
-AddressPrefix "10.0.4.0/24"

# Apply changes
$vnet | Set-AzVirtualNetwork

Write-Output "Virtual Network and Subnets Created Successfully"