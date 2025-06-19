## 1. Build Docker Image
docker build -t go-hello .

## 2. Jalankan Container
docker run -d -p 8080:8080 --name go-hello go-hello

## 3. akses browser
http://localhost:8080


##Buat tag docker image
docker tag go-hello <username-dockerhub>/go-hello:latest

##push docker image
docker push <username-dockerhub>/go-hello:latest