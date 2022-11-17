New-AzResourceGroup -Name HybridRunbookWorker -Location "northeurope" -Force -Verbose

$keyData = Get-Content "~\.ssh\id_rsa.pub" | ConvertTo-SecureString -AsPlainText -Force

$param = 
@{
    ResourceGroupName= 'HybridRunbookWorker'
    TemplateFile = '.\azuredeploy.bicep'
    Verbose = $true
    Keydata = $keyData
    deployVMs = $true
}
$output = New-AzResourceGroupDeployment @Param

