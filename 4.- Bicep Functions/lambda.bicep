var people = [
  {
    name: 'John'
    age: 6
    interests: ['music', 'skiing']
  }
  {
    name: 'Jane'
    age: 25
    interests: ['art', 'skiing']
  }
  {
    name: 'Bob'
    age: 8
    interests: ['music', 'art']
  }
  {
    name: 'Alice'
    age: 30
    interests: ['tv', 'nintendo']
  }
]


var kids = filter(people, p => p.age < 10)


var newName = map(people, p => 'Hello ${p.name}')  //Hello John, Hello Jane, Hello Bob, Hello Alice




var ages = map(people, p => p.age)


var sumAges = reduce(ages, 0, (cur, next) => cur + next)



var peopleByAge = sort(people, (a, b) => a.age < b.age)

// [
//   {
//     name: 'Alice'
//     age: 6
//     interests: [
//       'tv'
//       'nintendo'
//     ]
//   }
//   {
//     name: 'Bob'
//     age: 8
//     interests: [
//       'music'
//       'art'
//     ]
//   }
//   {
//     name: 'Jane'
//     age: 25
//     interests: [
//       'art'
//       'skiing'
//     ]
//   }
//   {
//     name: 'John'
//     age: 30
//     interests: [
//       'music'
//       'skiing'
//     ]
//   }
// ]



var peopleObject = toObject(people, p => p.name)

// {
//   John: {
//     name: 'John'
//     age: 30
//     interests: [
//       'music'
//       'skiing'
//     ]
//   }
//   Jane: {
//     name: 'Jane'
//     age: 25
//     interests: [
//       'art'
//       'skiing'
//     ]
//   }
//   Bob: {
//     name: 'Bob'
//     age: 8
//     interests: [
//       'music'
//       'art'
//     ]
//   }
//   Alice: {
//     name: 'Alice'
//     age: 6
//     interests: [
//       'tv'
//       'nintendo'
//     ]
//   }
// }



var peopleObject2 = toObject(people, p => p.name, p => p.interests)

// {
//   John: [
//     'music'
//     'skiing'
//   ]
//   Jane: [
//     'art'
//     'skiing'
//   ]
//   Bob: [
//     'music'
//     'art'
//   ]
//   Alice: [
//     'tv'
//     'nintendo'
//   ]
// }
