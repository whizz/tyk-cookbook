include_recipe 'redisio'
include_recipe 'mongodb'
include_recipe 'tyk::install_gateway'
include_recipe 'tyk::install_dashboard'

