// param utc string = utcNow() // "20250425T120000Z"



// param utcValue string = utcNow('d') // "2025-04-25"




// param baseTime string = utcNow('u') // "2025-04-25T12:00:00Z"

// var add5Years = dateTimeAdd(baseTime, 'P5Y') // "2030-04-25T12:00:00Z"


// var add3Hours = dateTimeAdd(baseTime, 'PT3H') // "2025-04-25T15:00:00Z"















// param omsAutomationAccountName string = 'demoAutomation'
// param scheduleName string = 'demSchedule1'
// param baseTime string = utcNow('u')

// var startTime = dateTimeAdd(baseTime, 'PT1H')

// resource scheduler 'Microsoft.Automation/automationAccounts/schedules@2015-10-31' = {
//   name: '${omsAutomationAccountName}/${scheduleName}'
//   properties: {
//     description: 'Demo Scheduler'
//     startTime: startTime
//     interval: 1
//     frequency: 'Hour'
//   }
// }





//April 25, 2025 at 12:00 PM (noon) -> 178801600


param convertedEpoch int = dateTimeToEpoch(utcNow())

var convertedDateTime = dateTimeFromEpoch(convertedEpoch)
