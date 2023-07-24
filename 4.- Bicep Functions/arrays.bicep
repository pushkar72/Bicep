//Array definitions
param array1 array = [
  'apple'
  'banana'
  'orange'
  'apple'
]


param array2 array = [
  'red'
  'yellow'
  'blue'
  'orange'
]

param array3 array = [
  34
  56
  78
  90
  16
]



//concat
var newArray = concat(array1, array2) // ['apple', 'banana', 'orange', 'red','yellow','blue']





//contains
var hasWord = contains(array2, 'orange') //False





//first && last
var firstItem = first(array1) // apple
var lastItem = last(array1) // orange





//empty
var isEmpty = empty(array1) // False





//length
var numberOfElements = length(array2) // 3





//take
var twoElements = take(array1, 2) // ["apple", "banana"]






//skip
var lastElement = skip(array1, 2) // ["orange"]





//indexOf
var index = indexOf(array1, 'orange') //2






//lastIndexOf
var lastIndex = lastIndexOf(array1, 'apple') //3





//intersection
var oranges = intersection(array1, array2) // ["orange"]





//union
var allElements = union(array1, array2) //['apple','banana','orange','red','yellow','blue']






//max && min
var maxNumber = max(array3) //90
var minNumber = min(array3) //16





//range
var numericArray = range(5, 6) //[5,6,7,8,9,10]



param multipleArrays array = [
  array1
  array2
  array3
]




//flatten
var superArray = flatten(multipleArrays) //['apple','banana','orange','apple','red','yellow','blue','orange',34,56,78,90,16,]






//array
var arrayDemo = array(5) //[5]





//array - object To array
param objectToConvert object = {
  a: 'b'
  c: 'd'
}

var arrayDemo2 = array(objectToConvert) //[{a: 'b', c: 'd'}]
