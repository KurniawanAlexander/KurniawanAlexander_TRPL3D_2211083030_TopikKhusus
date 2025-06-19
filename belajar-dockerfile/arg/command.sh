
#hapus container yang sudah ada
docker container stop my-nginx
docker container rm my-nginx

#build docker images
docker build -t my-nginx:latest  .
docker build -t my-nginx:latest -q .


#running docker images
docker run --rm my-nginx:latest

#running docker images
docker run -d --name my-nginx my-nginx:latest

#masuk ke dalam container
docker exec -it my-nginx /bin/sh

