# Gateway configuration
default['tyk']['gateway']['install_path'] = '/opt/tyk-gateway'
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

# Dashboard configuration  
default['tyk']['dashboard']['config'] = {
  :listen_port => 3000,
  :tyk_api_config => {
      :Host => "http://localhost",
      :Port => "#{node['tyk']['gateway']['config']['listen_port']}",
      :Secret => node['tyk']['gateway']['config']['secret']
    },
  :mongo_url => node['tyk']['gateway']['config']['analytics_config']['mongo_url'],
  :page_size => 10,
  :admin_secret => "12345",
  :redis_port => 6379,
  :redis_host => "localhost",
  :redis_password => "",
  :force_api_defaults => false,
  :notify_on_change => true,
  :license_owner => "Your Name",
  :hash_keys => true,
  :email_backend => {},
  :hide_listen_path => false,
  :use_sentry => false,
  :sentry_code => "",
  :sentry_js_code => "",
  :show_org_id => true,
  :enable_duplicate_slugs => true,
  :host_config => {
      :override_hostname => node['fqdn'],
      :disable_org_slug_prefix => true,
      :enable_host_names => false,
      :hostname => node['fqdn'],
      :portal_domains => {},
      :portal_root_path => "/portal"
    },
  :http_server_options => {
      :use_ssl => false,
      :certificates => [
            {}
        ]
    },
  :ui => {
      :login_page => {},
      :nav => {},
      :uptime => {},
      :portal => {},
      :designer => {}
    },
  :home_dir => "/opt/tyk-dashboard"
}