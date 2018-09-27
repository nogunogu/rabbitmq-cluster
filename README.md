# rabbitmq-cluster

Set up RabbitMQ Cluster

## GCPでの設定
1. GCPでインスタンスを必要数立ち上げる
1. chef-serverを使ってそれぞれにRMQをインストールする
1. 各サーバーに入って rabbitmqctl join_clusterする
   → これをChefでできるか？やるとすると、Master用とMirror用のレシピか。

1. $ knife cookbook upload rabbitmq-cluster
1. $ knife bootstrap 35.231.195.214 --ssh-user ugooon-def --sudo --identity-file ~/.ssh/ugooon-def.pem --node-name rmq3 --run-list 'recipe[rabbitmq-cluster]'

1. GCPのファイヤウォールで15672にアクセスできるように設定する
1. メインノード以外でjoin-clusterを実行する
