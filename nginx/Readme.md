https://hub.docker.com/_/nginx

docker run --rm --entrypoint=cat nginx /etc/nginx/nginx.conf > /host/path/nginx.conf
