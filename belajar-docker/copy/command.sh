
#hapus container yang sudah ada
docker container stop my-nginx
docker container rm my-nginx

#build docker images
docker build -t my-nginx:latest  .
docker build -t my-nginx:latest -q .

#-q: Singkatan dari --quiet->Hanya mencetak satu baris berupa image ID dari hasil build
#
#running docker images
# docker run -d --name my-nginx my-nginx:latest

#running docker images port 8080
docker run -d --name my-nginx -p 8080:80 my-nginx:latest

#access
http://localhost:8080/about.html
http://localhost:8080/contactus.html

#masuk ke dalam container
docker exec -it my-nginx /bin/sh

#cek apakah file ada di dalam container
cd /usr/share/nginx/html
ls -l
