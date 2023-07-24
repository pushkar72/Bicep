// operand1 !~ operand2






param firstString string = 'demo'
param secondString string = 'TEST'

param thirdString string = 'demo'
param fourthString string = 'DeMo'

output strNotEqual1 bool = firstString !~ secondString  // true
output strEqual2 bool = thirdString !~ fourthString     // false
