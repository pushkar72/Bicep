// [for <item> in items(<object>): {
//   ...
// }]


//I want to create an instance for each item in an object.


param nsgValues object = {
  nsg1: {
    name: 'nsg-westus1'
    location: 'westus'
  }
  nsg2: {
    name: 'nsg-east1'
    location: 'eastus'
  }
}

resource nsg 'Microsoft.Network/networkSecurityGroups@2020-06-01' = [for nsg in items(nsgValues): {
  name: nsg.value.name
  location: nsg.value.location
}]

// "itemsResult": {
//   "type": "Array",
//   "value": [
//     {
//        ...
//     },
//     {
//       ...
//     }
//   ]
// }
