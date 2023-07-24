// // param sqlServerName string
// // param adminLogin string

// // @secure()
// // param adminPassword string

// // resource sqlServer 'Microsoft.Sql/servers@2020-11-01-preview' = {
// //   ...
// // }

// param sqlServerName string
// param adminLogin string

// param subscriptionId string
// param kvResourceGroup string
// param kvName string

// resource keyVault 'Microsoft.KeyVault/vaults@2019-09-01' existing = {
//   name: kvName
//   scope: resourceGroup(subscriptionId, kvResourceGroup )
// }

// module sql './sql.bicep' = {
//   name: 'deploySQL'
//   params: {
//     sqlServerName: sqlServerName
//     adminLogin: adminLogin
//     adminPassword: keyVault.getSecret('vmAdminPassword')
//   }
// }






resource storageAccount 'Microsoft.Storage/storageAccounts@2019-06-01' = {
  name: 'dscript${uniqueString(resourceGroup().id)}'
  location: 'centralus'
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
}

resource dScript 'Microsoft.Resources/deploymentScripts@2019-10-01-preview' = {
  name: 'scriptWithStorage'
  location: 'centralus'
  kind: 'AzureCLI'
  properties: {
    azCliVersion: '2.0.80'
    storageAccountSettings: {
      storageAccountName: storageAccount.name
      storageAccountKey: storageAccount.listKeys().keys[0].value
    }
  }
}

//https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/bicep-functions-resource#implementations




var supported = pickZones('Microsoft.Compute', 'virtualMachines', 'westus2') //[ "1" ]
var notSupportedRegion = pickZones('Microsoft.Compute', 'virtualMachines', 'westus') //[]
