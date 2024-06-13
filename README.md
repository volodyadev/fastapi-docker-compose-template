### Запуск

`docker volume create --name=app_redis_data`

`docker volume create --name=postgres`

`docker network create --driver=bridge --subnet=172.120.0.0/16 app_network`

`cd  ./manage`

`./start.sh --dev`