// array[integerIndex]
// object['stringIndex']





//Example with array
var arrayVar = [
  'Coho'
  'Contoso'
  'Fabrikan'
]

output accessorResult1 string = arrayVar[1] //'Contoso'


//Example with object
var environmentSettings = {
  dev: {
    name: 'Development'
  }
  prod: {
    name: 'Production'
  }
}

output accessorResult2 string = environmentSettings['dev'].name // 'Development'
