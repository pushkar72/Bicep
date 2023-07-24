//bicep storage

//Parameters
//uniqueString function generates unique GUID
param storageaccountname string

//variable
var appserviceplan ='pushkar-free-plan'
//storage account
resource storageaccount 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: 'pushkar-${uniqueString(resourceGroup().id)}'
  location: resourceGroup().location
  kind: 'StorageV2'
  sku: {
    name: 'Premium_LRS'
  }
}

//app service plan
resource appServicePlan 'Microsoft.Web/serverFarms@2022-03-01' = {
  name: 'pushkar-product-launch-plan-starter'
  location: resourceGroup().location
  sku: {
    name: 'F1'
  }
}
//web app service
resource appServiceApp 'Microsoft.Web/sites@2022-03-01' = {
  name: appserviceplan
  location: resourceGroup().location
  properties: {
    serverFarmId: appServicePlan.id
    httpsOnly: true
  }
}



