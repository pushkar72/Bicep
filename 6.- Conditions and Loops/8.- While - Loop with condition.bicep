// [for <item> in <collection>: if(<condition>) {
//   ...
// }]


//I want to create multiple instances, but for each instance I want to deploy only when a condition is true.


param location string = resourceGroup().location
param storageCount int = 2
param createNewStorage bool = true

var baseName = 'store${uniqueString(resourceGroup().id)}'

module stgModule './storageAccount.bicep' = [for i in range(0, storageCount): if(createNewStorage) {
  name: '${i}deploy${baseName}'
  params: {
    storageName: '${i}${baseName}'
    location: location
  }
}]













var parents = [
  {
    name: 'parent1'
    enabled: true
    children: [
      {
        name: 'child1'
        settingValue: 'value1'
      }
      {
        name: 'child2'
        settingValue: 'value2'
      }
    ]
  }
  {
    name: 'parent2'
    enabled: false
    children: [
      {
        name: 'child3'
        settingValue: 'value3'
      }
    ]
  }
  {
    name: 'parent3'
    enabled: true
    children: [
      {
        name: 'child4'
        settingValue: 'value4'
      }
      {
        name: 'child5'
        settingValue: 'value5'
      }
    ]
  }
]



resource parentResources 'Microsoft.Example/examples@2020-06-06' = [for parent in parents: if(parent.enabled) {
  name: parent.name
  properties: {
    children: [for child in parent.children: {
      name: child.name
      setting: child.settingValue
    }]
  }
}]
