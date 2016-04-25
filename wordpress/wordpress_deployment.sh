docker build --no-cache -t wordpress .
docker run -d -e MYSQL_PASS="password" --name db -p 3306:3306 tutum/mysql:5.5
docker run -d --link db:db -e DB_PASS="password" -p 9004:80 wordpress
