# Set-AzContext $subscriptionName

$location = "westeurope"
$templateFile = "$PSScriptRoot\vm-multiple.json"
$templateParameterFile = "$PSScriptRoot\vm-multiple.parameters.json"
$resourceGroupName = "rg-demo-vms-multiple"

New-AzResourceGroup `
 -name $resourceGroupName `
 -Location $location

New-AzResourceGroupDeployment `
 -ResourceGroupName $resourceGroupName `
 -TemplateFile $templateFile `
 -TemplateParameterFile $templateParameterFile `
 -Force `
 -Mode Complete `
 -verbose

