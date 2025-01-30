variable comman_tages {
  
  default = {
    terraform = true 
    project = "expense" 
    environment = "production "
  } 
}
 variable instance_name {
     default = [ "db","backend","frountend"]
 
}

# r53
 variable zone_id {
    default = "Z07580402H5LV9N8WYF93"
 }

 variable domine_name {
    default = "kedar78s.online"
 }