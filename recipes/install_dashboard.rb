packagecloud_repo 'tyk/tyk-dashboard'

package 'tyk-dashboard'

template '/opt/tyk-dashboard/tyk_analytics.conf' do
  source 'tyk.conf.erb'
  variables( 
    :config => node['tyk']['dashboard']['config']
  )
  notifies :reload, "service[tyk-dashboard]"
end

service 'tyk-dashboard' do
  action [:enable, :start]
end
