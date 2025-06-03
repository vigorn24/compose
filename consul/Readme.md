- Web UI	http://<IP>:8500
- HTTP API	http://<IP>>:8500/v1/

# Примеры взаимодействия с сервисом
- Создаем ключ "api-key" со значением "my-secret-value"
```shell
curl \
  --request PUT \
  --data 'my-secret-value' \
  http://<IP>:8500/v1/kv/my-app/config/api-key
```

- Читаем значение ключа 
```shell
curl http://<IP>>:8500/v1/kv/my-app/config/api-key?raw
```