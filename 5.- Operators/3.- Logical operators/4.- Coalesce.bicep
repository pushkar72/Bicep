//operand1 ?? operand2






param myObject object = {
  isnull1: null
  isnull2: null
  string: 'demoString'
  emptystr: ''
  integer: 10
  }

output nonNullStr string = myObject.isnull1 ?? myObject.string ?? myObject.isnull2    //returns 'demoString'
output nonNullInt int = myObject.isnull1 ?? myObject.integer ?? myObject.isnull2      //returns 10
output nonNullEmpty string = myObject.isnull1 ?? myObject.emptystr ?? myObject.string ?? myObject.isnull2   //returns <empty>
