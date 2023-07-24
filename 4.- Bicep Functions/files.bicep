var textContent = loadFileAsBase64('test.txt')


var rules = loadJsonContent('rules.json')


resource newNSG 'Microsoft.Network/networkSecurityGroups@2021-02-01' = {
  name: 'example-nsg'
  location: 'centralus'
  properties: {
    securityRules: [
      {
        name: 'SSH'
        properties: {
          description: rules.description
          protocol: rules.protocol
          sourcePortRange: rules.sourcePortRange
          destinationPortRange: rules.destinationPortRange
          sourceAddressPrefix: rules.sourceAddressPrefix
          destinationAddressPrefix: rules.destinationAddressPrefix
          access: rules.access
          priority: rules.priority
          direction: rules.direction
        }
      }
    ]
  }
}







resource exampleScript 'Microsoft.Resources/deploymentScripts@2020-10-01' = {
  name: 'exampleScript'
  location: resourceGroup().location
  kind: 'AzurePowerShell'
  identity: {
    type: 'UserAssigned'
    userAssignedIdentities: {
      '/subscriptions/{sub-id}/resourcegroups/{rg-name}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{id-name}': {}
    }
  }
  properties: {
    azPowerShellVersion: '8.3'
    scriptContent: loadTextContent('myscript.ps1')
    retentionInterval: 'P1D'
  }
}
      