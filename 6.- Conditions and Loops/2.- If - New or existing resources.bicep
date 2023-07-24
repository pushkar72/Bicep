param storageAccountName string
param location string = resourceGroup().location

@allowed([
  'new'
  'existing'
])
param newOrExisting string = 'new'
var createStorageAccount = newOrExisting != 'existing'

resource sa 'Microsoft.Storage/storageAccounts@2019-06-01' = if(createStorageAccount) {
  name: storageAccountName
  location: location
  sku: {
    name: 'Standard_LRS'
    tier: 'Standard'
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
  }
}








param usePrimaryRegion bool

resource hub_vnet 'Microsoft.Network/virtualNetworks@2022-09-01' = {
  name: 'hub-vnet'
  location : (usePrimaryRegion ? 'eastus' : 'westus')
}
