
#hapus container yang sudah ada
docker stop my-nginx
docker container rm my-nginx

#build docker images
docker build -t my-nginx:latest -q .

#running docker images
docker run -d --name my-nginx my-nginx:latest

#Inspect container
docker inspect my-nginx