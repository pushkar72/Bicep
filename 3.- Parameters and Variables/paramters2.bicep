param frname string
param location string

resource recognizer 'Microsoft.CognitiveServices/accounts@2022-12-01' = {
  name: frname
  location: location
  sku: {
    name: 'S0'
  }
  kind: 'FormRecognizer'  
}
