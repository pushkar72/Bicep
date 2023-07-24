
param storageaccountname string
param rglocation string
param appServiceName string

param sqlservername string
param sqldbname string
@secure()
param sqladmin string
@secure()
param sqlpassword string


//storage account
resource storageaccount 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: storageaccountname
  location: rglocation
  kind: 'StorageV2'
  sku: {
    name: 'Premium_LRS'
  }
}

module appService 'modules/appService.bicep' = {
  name: 'appService'
  params: {
    rglocation: rglocation
    appServiceName: appServiceName
  }
}

module sqlServer 'modules/sqldatabase.bicep'={
  name: 'sqlServer'
  params:{
    rglocation:rglocation
    sqladmin: sqladmin
    sqldbname:sqldbname
    sqlpassword:sqlpassword
    sqlservername:sqlservername
  }
}








