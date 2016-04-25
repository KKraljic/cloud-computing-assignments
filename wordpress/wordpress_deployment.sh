sudo docker build --no-cache -t wordpress .

sudo docker run -d -e MYSQL_PASS="password" --name db -p 9001:3306 mysql
sudo docker run -d --link db:db -e DB_PASS="password" -p 9000:80 wordpress
