resource devsschoolstorage 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: 'devsschoolstorage'
  location: 'centralus'
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
  properties:{
    accessTier:'Hot'
    supportsHttpsTrafficOnly: true
  }
}

resource container 'Microsoft.Storage/storageAccounts/blobServices/containers@2022-09-01' = {
  name: '${devsschoolstorage.name}/default/devsschoolcontainer'
  properties:{
    publicAccess:'Blob'
  }
  dependsOn:[
    devsschoolstorage
  ]
}
