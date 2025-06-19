
#hapus container yang sudah ada
docker stop my-nginx
docker container rm my-nginx

#build docker images
docker build -t my-nginx:latest .
docker build -t my-nginx:1.0 -q .

#-q: Singkatan dari --quiet->Hanya mencetak satu baris berupa image ID dari hasil build
#

#running docker images
docker run -d --name my-nginx my-nginx:latest

#masuk ke dalam container
docker exec -it my-nginx /bin/sh

#check curl
which curl
