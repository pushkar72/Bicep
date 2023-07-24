param stringToTest string = 'OneTwoThree'
param objectToTest object = {
  one: 'a'
  two: 'b'
  three: 'c'
}
param arrayToTest array = [
  'one'
  'two'
  'three'
]



var stringTrue = contains(stringToTest, 'e') //Bool True
var stringFalse = contains(stringToTest, 'z') //Bool  False
var objectTrue = contains(objectToTest, 'one') //Bool True
var objectFalse = contains(objectToTest, 'a') //Bool  False
var arrayTrue = contains(arrayToTest, 'three') //Bool True
var arrayFalse = contains(arrayToTest, 'four') //Bool False




param testArray array = []
param testObject object = {}
param testString string = ''


var arrayEmpty = empty(testArray) //True
var objectEmpty = empty(testObject) //True
var stringEmpty = empty(testString) //True







param firstObject object = {
  one: 'a'
  two: 'b'
  three: 'c'
}
param secondObject object = {
  one: 'a'
  two: 'z'
  three: 'c'
}
param firstArray array = [
  'one'
  'two'
  'three'
]
param secondArray array = [
  'two'
  'three'
]



var objectOutput = intersection(firstObject, secondObject) //{ one: 'a' three: 'c' }
var arrayOutput = intersection(firstArray, secondArray) //[ 'two' 'three' ]








var entities = {
  item002: {
    enabled: false
    displayName: 'Example item 2'
    number: 200
  }
  item001: {
    enabled: true
    displayName: 'Example item 1'
    number: 300
  }
}



var entitiesArray = items(entities)


// "itemsResult": {
//   "type": "Array",
//   "value": [
//     {
//       "key": "item001",
//       "value": {
//         "displayName": "Example item 1",
//         "enabled": true,
//         "number": 300
//       }
//     },
//     {
//       "key": "item002",
//       "value": {
//         "displayName": "Example item 2",
//         "enabled": false,
//         "number": 200
//       }
//     }
//   ]
// }




param jsonEmptyObject string = 'null'
param jsonObject string = '{\'a\': \'b\'}'
param jsonString string = '\'test\''
param jsonBoolean string = 'true'
param jsonInt string = '3'
param jsonArray string = '[[1,2,3]]'
param concatValue string = 'demo value'


var emptyObjectOutput1 = empty(json(jsonEmptyObject)) //bool - True
var objectOutput1 = json(jsonObject) //object - {"a": "b"}
var stringOutput1 =json(jsonString) //string - test
var booleanOutput1 = json(jsonBoolean) //bool - True
var intOutput1 = json(jsonInt) //int - 3
var arrayOutput1 = json(jsonArray) //array - [1,2,3]
var concatObjectOutput1 = json(concat('{"a": "', concatValue, '"}')) //object - {"a": "demo value"}







param arrayToTest2 array = [
  'one'
  'two'
  'three'
]
param stringToTest2 string = 'One Two Three'
param objectToTest2 object = {
  propA: 'one'
  propB: 'two'
  propC: 'three'
  propD: {
      'propD-1': 'sub'
      'propD-2': 'sub'
  }
}


var arrayLength = length(arrayToTest2) //3
var stringLength = length(stringToTest2) //13
var objectLength = length(objectToTest2) //4




param firstObject3 object = {
  one: 'a'
  two: 'b'
  three: 'c1'
}

param secondObject3 object = {
  three: 'c2'
  four: 'd'
  five: 'e'
}

param firstArray3 array = [
  'one'
  'two'
  'three'
]

param secondArray3 array = [
  'three'
  'four'
  'two'
]



var objectOutput3 = union(firstObject3, secondObject3) //{"one": "a", "two": "b", "three": "c2", "four": "d", "five": "e"}
var arrayOutput3 = union(firstArray3, secondArray3) //["one", "two", "three", "four"]

