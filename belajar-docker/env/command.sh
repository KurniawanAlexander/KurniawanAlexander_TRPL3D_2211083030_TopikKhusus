
####1. menambahkan env kedalam dockerfile\
#hapus container yang sudah ada
docker stop my-nginx
docker container rm my-nginx

#build docker images
docker build -t my-nginx:latest -q .

#running docker images
docker run -d --name my-nginx my-nginx:latest

#masuk ke dalam container
docker exec -it my-nginx /bin/sh

#check env
env

####2. menambahkan env kedalam argumen docker run
#hapus container yang sudah ada
docker stop my-nginx
docker container rm my-nginx

#build docker images
docker build -t my-nginx:latest -q .

#running docker dengan menambahkan env
docker run -d --name my-nginx -e MY_ENV=hello-world my-nginx:latest
#masuk ke dalam container
docker exec -it my-nginx /bin/sh
#check env
env

####3. load env dari file .env
#hapus container yang sudah ada
docker stop my-nginx
docker container rm my-nginx

#build docker images
docker build -t my-nginx:latest -q .

docker run -d --name my-nginx --env-file=.env  my-nginx:latest

#masuk ke dalam container
docker exec -it my-nginx /bin/sh
#check env
env