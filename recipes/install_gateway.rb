packagecloud_repo 'tyk/tyk-gateway'

package 'tyk-gateway' do
  version node['tyk']['gateway']['version']
end

template '/opt/tyk-gateway/tyk.conf' do
  source 'tyk.conf.erb'
  variables( 
    :config => node['tyk']['gateway']['config']
  )
  notifies :reload, "service[tyk-gateway]"
end

service 'tyk-gateway' do
  action [:enable, :start]
end
