execute 'stop-app' do
  command 'rabbitmqctl stop_app'
  user 'rabbitmq'
  notifies :run, 'execute[join to cluster]', :immediately
end

execute 'join to cluster' do
  command "rabbitmqctl join_cluster rabbit@#{node['rabbitmq']['master_node']}"
  user 'rabbitmq'
  action :nothing
  notifies :run, 'execute[start-app]', :immediately
end

execute 'start-app' do
  command 'rabbitmqctl start_app'
  user 'rabbitmq'
  action :nothing
end
