# Gateway
default['tyk']['gateway']['install_path'] = '/opt/tyk-gateway'

# Gateway configuration
# The configuration file is generated from node['tyk']['gateway']['config']
# For documentation see https://tyk.io/v1.9/configuration/configuration/
default['tyk']['gateway']['config']['listen_port'] = 8080
default['tyk']['gateway']['config']['secret'] = "Y0uSh0u1dR3a11yChang3Th1sS3cr3t"
default['tyk']['gateway']['config']['template_path'] = "#{node['tyk']['gateway']['install_path']}/templates"
default['tyk']['gateway']['config']['tyk_js_path'] = "#{node['tyk']['gateway']['install_path']}/js/tyk.js"
default['tyk']['gateway']['config']['use_db_app_configs'] = true
default['tyk']['gateway']['config']['app_path'] = "#{node['tyk']['gateway']['install_path']}/apps"
default['tyk']['gateway']['config']['middleware_path'] = "#{node['tyk']['gateway']['install_path']}/middleware"
default['tyk']['gateway']['config']['storage']
default['tyk']['gateway']['config']['storage']['type'] = "redis"
default['tyk']['gateway']['config']['storage']['host'] = "localhost"
default['tyk']['gateway']['config']['storage']['port'] = 6379
default['tyk']['gateway']['config']['storage']['username'] = ""
default['tyk']['gateway']['config']['storage']['password'] = ""
default['tyk']['gateway']['config']['storage']['database'] = 0
default['tyk']['gateway']['config']['storage']['optimisation_max_idle'] = 500
default['tyk']['gateway']['config']['enable_analytics'] = true
default['tyk']['gateway']['config']['analytics_config']['type'] = "mongo"
default['tyk']['gateway']['config']['analytics_config']['mongo_url'] = "mongodb://127.0.0.1:27017/tyk_analytics"
default['tyk']['gateway']['config']['analytics_config']['mongo_collection'] = "tyk_analytics"
default['tyk']['gateway']['config']['analytics_config']['purge_delay'] = 5
default['tyk']['gateway']['config']['analytics_config']['ignored_ips'] = []
default['tyk']['gateway']['config']['health_check']['enable_health_checks'] = true
default['tyk']['gateway']['config']['health_check']['health_check_value_timeouts'] = 60
default['tyk']['gateway']['config']['optimisations_use_async_session_write'] = true
default['tyk']['gateway']['config']['allow_master_keys'] = false
default['tyk']['gateway']['config']['policies']['policy_source'] = "mongo"
default['tyk']['gateway']['config']['policies']['policy_record_name'] = "tyk_policies"
default['tyk']['gateway']['config']['hash_keys'] = true
default['tyk']['gateway']['config']['suppress_redis_signal_reload'] = false

# Dashboard
default['tyk']['dashboard']['install_path'] = '/opt/tyk-dashboard'
  
# Dashboard configuration  
# The configuration file is generated from node['tyk']['dashboard']['config']
# For documentation see https://tyk.io/v1.9/configuration/dashboard-config/
default['tyk']['dashboard']['config']['listen_port'] = 3000
default['tyk']['dashboard']['config']['tyk_api_config']['Host'] = "http://localhost"
default['tyk']['dashboard']['config']['tyk_api_config']['Port'] = "#{node['tyk']['gateway']['config']['listen_port']}"
default['tyk']['dashboard']['config']['tyk_api_config']['Secret'] = node['tyk']['gateway']['config']['secret']
default['tyk']['dashboard']['config']['mongo_url'] = node['tyk']['gateway']['config']['analytics_config']['mongo_url']
default['tyk']['dashboard']['config']['page_size'] = 10
default['tyk']['dashboard']['config']['admin_secret'] = "12345"
default['tyk']['dashboard']['config']['redis_port'] = 6379
default['tyk']['dashboard']['config']['redis_host'] = "localhost"
default['tyk']['dashboard']['config']['redis_password'] = ""
default['tyk']['dashboard']['config']['force_api_defaults'] = false
default['tyk']['dashboard']['config']['notify_on_change'] = true
default['tyk']['dashboard']['config']['license_owner'] = "Your Name"
default['tyk']['dashboard']['config']['hash_keys'] = true
default['tyk']['dashboard']['config']['email_backend'] = {}
default['tyk']['dashboard']['config']['hide_listen_path'] = false
default['tyk']['dashboard']['config']['use_sentry'] = false
default['tyk']['dashboard']['config']['sentry_code'] = ""
default['tyk']['dashboard']['config']['sentry_js_code'] = ""
default['tyk']['dashboard']['config']['show_org_id'] = true
default['tyk']['dashboard']['config']['enable_duplicate_slugs'] = true
default['tyk']['dashboard']['config']['host_config']['override_hostname'] = node['fqdn']
default['tyk']['dashboard']['config']['host_config']['disable_org_slug_prefix'] = true
default['tyk']['dashboard']['config']['host_config']['enable_host_names'] = false
default['tyk']['dashboard']['config']['host_config']['hostname'] = node['fqdn']
default['tyk']['dashboard']['config']['host_config']['portal_domains'] = {}
default['tyk']['dashboard']['config']['host_config']['portal_root_path'] = "/portal"
default['tyk']['dashboard']['config']['http_server_options']['use_ssl'] = false
default['tyk']['dashboard']['config']['http_server_options']['certificates'] = [ {} ]
default['tyk']['dashboard']['config']['ui']['login_page'] = {}
default['tyk']['dashboard']['config']['ui']['nav'] = {}
default['tyk']['dashboard']['config']['ui']['uptime'] = {}
default['tyk']['dashboard']['config']['ui']['portal'] = {}
default['tyk']['dashboard']['config']['ui']['designer'] = {}
default['tyk']['dashboard']['config']['home_dir'] = node['tyk']['dashboard']['install_path']
