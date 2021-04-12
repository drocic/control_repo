class profile::agent_nodes {
  include dockeragent
  dockeragent::node{'web.localhost.localdomain':}  
  dockeragent::node{'db.ocalhost.localdomain':}
}
