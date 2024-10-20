# Define Local Variables
$RG = "MyRG-project7-psscript"
$Location = "eastus"
$UserName = "azadmin"
$Password = (ConvertTo-SecureString "Passw0rd123!" -Force -AsPlainText)
$VMName = "Project7-VM-PS"
$VMSize = "Standard_B2ms"
$VirtualNetwork = "azTestBox01_vnet" #existing Vnet on different resource group
$Subnet = "TestBOX-Sub-10.0.0.0" #existing subnet on different resource group
$Friendly_Image_Name = "MicrosoftWindowsServer:WindowsServer:2019-Datacenter:Latest"


# Set credentials
$Credential = New-Object System.Management.Automation.PSCredential ($UserName, $Password)

New-AzVm `
-Name $VMName `
-ResourceGroupName $RG `
-Location $Location `
-VirtualNetworkName $VirtualNetwork `
-SubnetName $Subnet `
-Image $Friendly_Image_Name `
-Size $VMSize `
-Credential $Credential
