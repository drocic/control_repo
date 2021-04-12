class profile::agent_nodes {
  include dockeragent
  dockeragent::node{'localhost.localdomain':}  
  dockeragent::node{'db.ocalhost.localdomain':}
}
