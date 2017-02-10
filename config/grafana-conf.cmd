apt-get update
apt-get -y install curl

curl --user admin:admin -v -X POST http://localhost:3000/api/datasources -d @/etc/grafana/scripts/datasource.json --header 'Content-Type: application/json'

curl --user admin:admin -v -X POST http://localhost:3000/api/dashboard/db -d @/etc/grafana/scripts/dashboard.json --header 'Content-Type: application/json'
