var deploymentData = deployment()

// {
//   name: 'deployment'
//   properties: {
//     template: {
//       '$schema': 'https://schema.management.azure.com/schemas/2019-04-01/deploymentTemplate.json#'
//       contentVersion: '1.0.0.0'
//       resources: []
//       outputs: {
//         deploymentOutput: {
//           type: 'Object'
//           value: deployment()
//         }
//       }
//     }
//     templateHash: '13135986259522608210'
//     parameters: {}
//     mode: 'Incremental'
//     provisioningState: 'Accepted'
//   }
// }






var environmentData = environment()

// {
//   name: 'AzureCloud'
//   gallery: 'https://gallery.azure.com/'
//   graph: 'https://graph.windows.net/'
//   portal: 'https://portal.azure.com'
//   graphAudience: 'https://graph.windows.net/'
//   activeDirectoryDataLake: 'https://datalake.azure.net/'
//   batch: 'https://batch.core.windows.net/'
//   media: 'https://rest.media.azure.net'
//   sqlManagement: 'https://management.core.windows.net:8443/'
//   vmImageAliasDoc: 'https://raw.githubusercontent.com/Azure/azure-rest-api-specs/master/arm-compute/quickstart-templates/aliases.json'
//   resourceManager: 'https://management.azure.com/'
//   authentication: {
//     loginEndpoint: 'https://login.microsoftonline.com/'
//     audiences: [
//       'https://management.core.windows.net/'
//       'https://management.azure.com/'
//     ]
//     tenant: 'common'
//     identityProvider: 'AAD'
//   }
//   suffixes: {
//     acrLoginServer: '.azurecr.io'
//     azureDatalakeAnalyticsCatalogAndJob: 'azuredatalakeanalytics.net'
//     azureDatalakeStoreFileSystem: 'azuredatalakestore.net'
//     azureFrontDoorEndpointSuffix: 'azurefd.net'
//     keyvaultDns: '.vault.azure.net'
//     sqlServerHostname: '.database.windows.net'
//     storage: 'core.windows.net'
//   }
// }
