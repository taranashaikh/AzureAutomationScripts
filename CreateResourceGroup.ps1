
# Create a new resource group in Azure
$resourceGroupName = "MyRG-project7-psscript"
$location = "EastUS"
New-AzResourceGroup -Name $resourceGroupName -Location $location
