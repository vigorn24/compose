Подборка docker-compose следующих сервисов:
- postgres -  СУБД PostgreSQL
- rabbitmq - система очередей RabbitMQ
- kafka  - топики Kafka
- consul - хранение конфигурации приложений и Service Discovery 
- elk - обработка, хранение и просмотр логов на базе Opensearch
- minios3 - объектное  хранилище S3 
- mongodb - NonSQL СУБД MongoDB
- redis - кэш Redis
- vmetrics - сервис мониторинга VictoriaMetrics и Графина для просмотра 
- nginx - сервис NGINX для проксирования запросов и выдачи статики

Описание подключения приложений к сервису см. в <service_dir>/Readme.md

# Запуск сервиса
1) Клонировать репу
git clone https://github.com/vigorn24/compose.git

2) перейти в нужную директорию
cd compose/<dir>

3) запустить сервис
docker-comopse up -d 

ключ:
-d - запустить в фоне

# Остановка сервиса (предварително перейти в директорию с сервисом compose/<dir>)
docker-comopse down

# просмотр логов (предварително перейти в директорию с сервисом compose/<dir>)
docker-compose logs <service-name>


Если хотите контролировать расположение данных, внесите изменения в конфигурацию docker. Для linux обычно файл конфигурации - /etc/docker/daemon.json
{
  "data-root": "/opt/docker",
  "log-opts": {
    "max-size": "500m",  
    "max-file": "2"  
  }
}
где:
- data-root - корневой каталог, где Docker хранит все свои данные (образы, контейнеры, тома, сети и другие данные). Значение по умолчанию: /var/lib/docker
- max-size - Ограничивает максимальный размер одного лог-файла контейнера до 500 мегабайт. Когда лог достигает этого размера, Docker ротирует его (создаёт новый файл)
- max-file - Ограничивает количество лог-файлов на контейнер до 2
