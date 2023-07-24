resource devsschoolstorage 'Microsoft.Storage/storageAccounts@2021-02-01' existing = {
  name: 'devsschoolstorage'
}

resource container 'Microsoft.Storage/storageAccounts/blobServices/containers@2022-09-01' = {
  name: '${devsschoolstorage.name}/default/devsschoolcontainer2'
  properties:{
    publicAccess:'Blob'
  }
}

resource service 'Microsoft.Storage/storageAccounts/fileServices@2022-09-01' = {
  parent: devsschoolstorage
  name: 'default'
}