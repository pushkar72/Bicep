param frname string
param location string = 'centralus'
param dynamicThrottling bool = true
param capacity int = 0

param testEnvironment object = {
  owner: 'Tony Stark'
  environment: 'tests'
}

param devEnvironment object = {
  owner: 'Héctor Perez'
  environment: 'tests'
}

param prodEnvironment object = {
  name: 'S0'  
  capacity: capacity
}

param allowedIps array = [
  {
    value: '40.76.54.131'
  }
  {
    value: '52.176.6.30'
  }
]

@metadata({
  documentation: 'some-url'
})
@secure()
param password string


@description('The password for the resource. Must be at least 6 characters in length and must contain at least one digit, one non-alphanumeric character, and one upper or lower case letter.')
param descriptiondemo string

@minLength(5)
@maxLength(10)
param name string

@minValue(0)
@maxValue(100)
param age int

@allowed([
  'F0'
])
param allowedSkus string



resource recognizer 'Microsoft.CognitiveServices/accounts@2022-12-01' = {
  name: frname
  location: location
  sku: {
    name: allowedSkus
    capacity: prodEnvironment.capacity
  }
  kind: 'FormRecognizer'
  properties:{
    dynamicThrottlingEnabled: dynamicThrottling
    networkAcls:{
      ipRules: allowedIps
    }
  }
  tags: devEnvironment
}
