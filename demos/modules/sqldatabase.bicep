
param sqlservername string
param rglocation string
param sqldbname string
@secure()
@description('The administrator login username for the SQL server.')
param sqladmin string

@secure()
@description('The administrator login password for the SQL server.')
param sqlpassword string

resource mickeySqlServer 'Microsoft.Sql/servers@2014-04-01' ={
  name: sqlservername
  location: rglocation
  properties:{
    administratorLogin:sqladmin
    administratorLoginPassword:sqlpassword
  }
}


resource sqlServerFirewallRules 'Microsoft.Sql/servers/firewallRules@2021-02-01-preview' = {
  parent: mickeySqlServer
  name: 'sqlfirewallRules'
  properties: {
    startIpAddress: '0.0.0.0'
    endIpAddress: '255.255.255.255'
  }
}



resource sqlServerDatabase 'Microsoft.Sql/servers/databases@2014-04-01' = {
  parent: mickeySqlServer
  name: sqldbname
  location: rglocation
  sku:{
    name: 'Basic'
    tier: 'Basic'
    size: 'Basic' 
  }
}
