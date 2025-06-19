
#hapus container yang sudah ada
docker stop my-nginx
docker container rm my-nginxd

#build docker images
docker build -t my-nginx:latest -q .

#running docker images
docker run -d --name my-nginx my-nginx:latest

#Masuk ke dalam container
docker exec -it my-nginx /bin/sh

