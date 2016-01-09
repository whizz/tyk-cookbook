name             'tyk'
maintainer       'Michal Táborský'
maintainer_email 'michal@taborsky.cz'
license          'Apache'
description      'Installs/Configures tyk'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

%w[ debian ubuntu centos redhat fedora scientific ].each do |os|
  supports os
end

depends 'packagecloud', '~> 0.1.1'
depends 'redisio', '~> 2.3.0'
depends 'mongodb', '~> 0.16.2'
