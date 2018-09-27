default['rabbitmq']['version'] = "3.6.16"
default['rabbitmq']['clustering']['enable'] = true
default['rabbitmq']['loopback_users'] = []
default['rabbitmq']['default_user'] = "mqadmin"
default['rabbitmq']['default_pass'] = "mqadmin"
default['rabbitmq']['tcp_listen_interface'] = nil

default['erlang']['install_method'] = "esl"
default['erlang']['esl']['version'] = "1:20.2.2"
