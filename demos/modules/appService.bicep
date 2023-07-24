
param rglocation string
param appServiceName string

//variable
var appserviceplan ='pushkar-free-plan'

//app service plan
resource appServicePlan 'Microsoft.Web/serverFarms@2022-03-01' = {
  name: appserviceplan
  location: rglocation
  sku: {
    name: 'F1'
  }
}
//web app service
resource appServiceApp 'Microsoft.Web/sites@2022-03-01' = {
  name: appServiceName
  location: rglocation
  properties: {
    serverFarmId: appServicePlan.id
    httpsOnly: true
  }
}

//add connection string in appservice
