
#echo "Build spring boot demo image"
#cd spring-boot-app/
#mvn clean package
#cd ..
echo "=============================="
echo "initializing docker images"
echo "=============================="
docker-compose up -d
echo "=============================="
echo "configuring grafana datasource"
echo "=============================="
docker-compose exec grafana sh /etc/grafana/scripts/grafana-conf.cmd
