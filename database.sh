docker run  -d \
    --name prom \
    -p 9090:9090 \
    -u root \
    --network host \
    -e TZ=Asia/Tokyo \
    -v /overlay/prom/data:/prometheus \
    -v $PWD/prom/config:/prometheus/config \
    prom/prometheus --config.file=/prometheus/config/prometheus.yml --web.enable-lifecycle --web.enable-admin-api --storage.tsdb.path=/prometheus

    -v $PWD/prom/data:/prometheus \

docker run  -d\
     --name=grafana \
    -p 3000:3000 \
    -u root \
    --network host \
    -e TZ=Asia/Tokyo \
    -v $PWD/grafana/data:/var/lib/grafana \
    -v $PWD/grafana/plugins/:/var/lib/grafana/plugins \
    -v $PWD/grafana/config/grafana.ini:/etc/grafana/grafana.ini \
    -e "GF_SECURITY_ADMIN_PASSWORD=admin" \
    grafana/grafana