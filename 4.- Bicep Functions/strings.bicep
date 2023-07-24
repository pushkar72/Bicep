// param stringData string = 'one, two, three'
// param jsonFormattedData string = '{\'one\': \'a\', \'two\': \'b\'}'

// var base64String = base64(stringData)
// var base64Object = base64(jsonFormattedData)

// var base64Output = base64String //  b25lLCB0d28sIHRocmVl
// var toStringOutput = base64ToString(base64String) //  one, two, three
// var toJsonOutput = base64ToJson(base64Object) //  {"one": "a", "two": "b"}





// param stringToTest string = 'Hello'
// param dataFormattedString string = 'data:;base64,SGVsbG8sIFdvcmxkIQ=='

// var dataUriOutput = dataUri(stringToTest) //data:text/plain;charset=utf8;base64,SGVsbG8=
// var toStringOutput = dataUriToString(dataFormattedString) //  Hello, World!

// var uriFormat = uri('http://contoso.com/resources/', 'nested/azuredeploy.json')
// var uriEncoded = uriComponent(uriFormat)

// var uriOutput = uriFormat //http://contoso.com/resources/nested/azuredeploy.json
// var componentOutput = uriEncoded //http%3A%2F%2Fcontoso.com%2Fresources%2Fnested%2Fazuredeploy.json
// var toStringOutput2 = uriComponentToString(uriEncoded) //http://contoso.com/resources/nested/azuredeploy.json




// param testString string = '123'
// var stringOutput = padLeft(testString, 10, '0') //  0000000123

// param testString2 string = 'One Two Three'
// var toLowerOutput = toLower(testString2) // one two three
// var toUpperOutput = toUpper(testString2) // ONE TWO THREE

// param testString3 string = '    one two three   '
// var trimmedString = trim(testString3) // one two three

// param testString4 string = 'one two three'
// output substringOutput string = substring(testString4, 4, 3) //two

// param testString5 string = '123-123-1234'
// output firstOutput string = replace(testString5, '-', '') //1231231234
// output secondOutput string = replace(testString5, '1234', 'xxxx') //123-123-xxxx




// var startsTrue = startsWith('abcdef', 'ab') //True
// var startsFalse = startsWith('abcdef', 'e') //False

// var endsTrue = endsWith('abcdef', 'ef') //True
// var endsCapTrue = endsWith('abcdef', 'F') //True

// var firstT = indexOf('test', 't') //0
// var lastT = lastIndexOf('test', 't') //3
// output lastString int = lastIndexOf('abcdef', 'AB') //0
// output notFound int = indexOf('abcdef', 'z') // -1



var guidPerSubscription = guid(subscription().subscriptionId)
var guidPerResourceGroup = guid(resourceGroup().id)
var guidPerDeployment = guid(resourceGroup().id, deployment().name)



var uString1 = uniqueString(subscription().subscriptionId) // tcvhiyu5h2o5o
var uString2 = uniqueString(resourceGroup().id)
var uString3 = uniqueString(resourceGroup().id, deployment().name)


resource mystorage 'Microsoft.Storage/storageAccounts@2018-07-01' = {
  name: 'storage${uniqueString(resourceGroup().id)}'  // storage8a1b2c3d4e5f6a7b8c9d0e1f2a3b4c5d
}



// param guidValue string = newGuid() // 8a1b2c3d-4e5f-6a7b-8c9d-0e1f2a3b4c5d




param guidValue string = newGuid() // 8a1b2c3d-4e5f-6a7b-8c9d-0e1f2a3b4c5d

var storageName = 'storage${uniqueString(guidValue)}'

resource myStorage 'Microsoft.Storage/storageAccounts@2018-07-01' = {
  name: storageName
  location: 'West US'
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {}
}

var nameOutput = storageName // storage8a1b2c3d4e5f6a7b8c9d0e1f2a3b4c5d





var arrayString = [
  'one'
  'two'
  'three'
]

var firstJoin = join(arrayString, ',') // one,two,three
var secondJoin = join(arrayString, ';') // one;two;three


param firstString string = 'one,two,three'
param secondString string = 'one;two,three'

var delimiters = [
  ','
  ';'
]

var firstSplit = split(firstString, ',') // ["one", "two", "three"]
var secondSplit = split(secondString, delimiters) //  ["one", "two", "three"]
