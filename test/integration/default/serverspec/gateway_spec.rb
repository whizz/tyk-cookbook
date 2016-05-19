require 'serverspec'
set :backend, :exec

describe 'redis' do
  it 'is listening on port 6379' do
    expect(port(6379)).to be_listening
  end
end

describe 'mongodb' do
  it 'is listening on port 27017' do
    expect(port(27_017)).to be_listening
  end
end

describe 'tyk-gateway' do
  it 'has a service running' do
    expect(service('tyk-gateway')).to be_running
  end
  it 'is listening on port 8080' do
    expect(port(8080)).to be_listening
  end
end
