docker container exec -t sysfoundry-dev-base_consul_1 consul kv put $1/service-config/$2/data @/service/config/$2.yml
