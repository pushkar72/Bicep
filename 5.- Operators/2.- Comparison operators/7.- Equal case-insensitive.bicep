//operand1 =~ operand2






param firstString string = 'demo'
param secondString string = 'DEMO'

param thirdString string = 'demo'
param fourthString string = 'TEST'

output strEqual1 bool = firstString =~ secondString //true
output strEqual2 bool = thirdString =~ fourthString //false
