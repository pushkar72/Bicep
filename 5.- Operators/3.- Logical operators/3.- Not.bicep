//!boolValue






param initTrue bool = true
param initFalse bool = false

output startedTrue bool = !(initTrue) // false
output startedFalse bool = !initFalse // true
