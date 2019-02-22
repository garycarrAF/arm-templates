$scriptUrlBase = 'https://github.com/garycarrAF/arm-templates'

$parameters = @{
    subscriptionId = 'ebbdd8a0-9d65-43d0-9526-73ec87632296'
    resourceGroupName = 'af-core-net-rg'
    virtualMachineName = 'mazd-dbmi01'
    virtualNetworkName = 'microsegmentation-vnet'
    subnetName = 'data-paas'
    networkSecurityGroup = 'nsgManagedInstance634'
    administratorLogin  = 'adminuser'
    administratorLoginPassword  = '!Qazxdr5!Qazxdr5'
}
Invoke-Command -ScriptBlock ([Scriptblock]::Create((iwr ($scriptUrlBase+'/sql-mi.ps1?t='+ [DateTime]::Now.Ticks)).Content)) -ArgumentList $parameters, $scriptUrlBase
