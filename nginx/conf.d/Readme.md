Директория с файлами конфигурации nginx (<filename>.conf)

Проверка проксирования 
```shell
curl http://<IP>:8080/myapp
```

Получим "502 Bad Gateway". Настраиваем в файле ./conf.d/default.conf


Проверка загрузки статических страниц -  http://<IP>:8080/static/
Размещаем страницы в директории ./static/