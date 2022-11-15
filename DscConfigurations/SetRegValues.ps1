configuration SetRegValues
{
    Import-DscResource -ModuleName PSDscResources -ModuleVersion '2.9.0.0'

    Registry MyRegKeys
    {
        Key = 'HKLM:\SOFTWARE\AzureAutomationDemo'
        valueName = 'DSCDemo'
        ValueType = 'String'
        ValueData = 'First Simple Demo'
    }

}
