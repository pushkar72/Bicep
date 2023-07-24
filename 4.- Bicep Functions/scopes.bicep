// param managementGroupIdentifier string

// module  'mgModule.bicep' = {
//   name: 'deployToMG'
//   scope: managementGroup(managementGroupIdentifier)
// }


// targetScope = 'managementGroup'

// var mgInfo = managementGroup()

// var mgResult = mgInfo


//"mgResult": {
  //   "type": "Object",
  //   "value": {
  //     "id": "/providers/Microsoft.Management/managementGroups/examplemg1",
  //     "name": "examplemg1",
  //     "properties": {
  //       "details": {
  //         "parent": {
  //           "displayName": "Tenant Root Group",
  //           "id": "/providers/Microsoft.Management/managementGroups/00000000-0000-0000-0000-000000000000",
  //           "name": "00000000-0000-0000-0000-000000000000"
  //         },
  //         "updatedBy": "00000000-0000-0000-0000-000000000000",
  //         "updatedTime": "2020-07-23T21:05:52.661306Z",
  //         "version": "1"
  //       },
  //       "displayName": "Example MG 1",
  //       "tenantId": "00000000-0000-0000-0000-000000000000"
  //     },
  //     "type": "/providers/Microsoft.Management/managementGroups"
  //   }
  // }



// targetScope = 'managementGroup'

param mgName string = 'mg-${uniqueString(newGuid())}'

resource newMG 'Microsoft.Management/managementGroups@2020-05-01' = {
  scope: tenant()
  name: mgName
  properties: {
    details: {
      parent: {
        id: managementGroup().id
      }
    }
  }
}

var newManagementGroup = mgName

  


param resourceGroupName string

module exampleModule 'rgModule.bicep' = {
  name: 'exampleModule'
  scope: resourceGroup(resourceGroupName)
}




var resourceGroupOutput = resourceGroup()

// {
//   id: '/subscriptions/{subscription-id}/resourceGroups/examplegroup'
//   name: 'examplegroup'
//   type: 'Microsoft.Resources/resourceGroups'
//   location: 'southcentralus'
//   properties: {
//     provisioningState: 'Succeeded'
//   }
// }



param location string = resourceGroup().location





module exampleModule 'subModule.bicep' = {
  name: 'deployToSub'
  scope: subscription()
}



var subscriptionOutput = subscription()

// {
//   id: '/subscriptions/{subscription-id}'
//   subscriptionId: '{subscription-id}'
//   tenantId: '{tenant-id}'
//   displayName: '{name-of-subscription}'
// }




module exampleModule 'tenantModule.bicep' = {
  name: 'deployToTenant'
  scope: tenant()
}



var tenantInfo = tenant()

// "tenantResult": {
//   "type": "Object",
//   "value": {
//     "countryCode": "US",
//     "displayName": "Contoso",
//     "id": "/tenants/00000000-0000-0000-0000-000000000000",
//     "tenantId": "00000000-0000-0000-0000-000000000000"
//   }
// }




resource kv 'Microsoft.KeyVault/vaults@2021-06-01-preview' = {
  name: 'examplekeyvault'
  location: 'westus'
  properties: {
    tenantId: tenant().tenantId    
  }
}
