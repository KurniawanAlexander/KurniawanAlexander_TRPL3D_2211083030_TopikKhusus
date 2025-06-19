
#hapus container yang sudah ada
docker stop my-nginx
docker container rm my-nginx

#build docker images
docker build -t my-nginx:latest -q .

#running docker images
docker run -d --name my-nginx my-nginx:latest

#masuk ke dalam container
docker exec -it my-nginx /bin/sh

#cek apakah file ada di dalam container
cd /usr/share/nginx/html
ls -l

#file ingnore.html tidak ada di dalam container