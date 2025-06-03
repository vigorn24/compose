- pgadmin UI - http://<IP>:8083 , Login user@domain.com \ SuperSecret
  После входа зарегистрировать сервер: 
  - На вкладке General указать имя
  - На вкладке Connection 
    - Hostname - postgres
    - Maintenance database - postgres
    - Username - postgres
    - Password - secret

- подключаемся к БД через psql (встроен в docker образ, в стоке приглашения ввести пароль "secret")
```shell
docker exec -it postgres_postgres_1 psql -d postgres -U postgres -W 
```


- Connection String for application - postgresql://postgres:secret@<IP>:5432/postgres


https://www.pgadmin.org/docs/pgadmin4/latest/container_deployment.html
