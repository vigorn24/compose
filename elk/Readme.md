- opensearch-dashboards UI (Kibana) - http://<IP>:5600

- REST API: https://<IP>:9200, сredentials: admin / h!GFx6gWm8LYTRaQUv-


# примеры программного взаимодействия с сервисом
- Пример просмотра списка индексов через curl
```shell
curl -XGET -k -u 'admin:h!GFx6gWm8LYTRaQUv-' 'https://localhost:9200/_cat/indices?v'
```

- создание индекса, код на python
```python
from opensearchpy import OpenSearch

client = OpenSearch(
    hosts=['https://admin:h!GFx6gWm8LYTRaQUv-@localhost:9200'],
    use_ssl=True,
    verify_certs=False  
)

# Create index
client.indices.create(index='books')
```

https://docs.opensearch.org/docs/latest/getting-started/quickstart/
https://raw.githubusercontent.com/opensearch-project/documentation-website/2.19/assets/examples/docker-compose.yml
