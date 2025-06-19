#create docker compose
docker compose create

#start docker compose
docker compose up -d

#check docker compose
docker compose ps

#check nginx
docker compose logs -f

#check nginx
docker compose exec nginx curl -I localhost:8080
#check nginx
docker compose exec nginx curl -I localhost:8081
#stop docker compose
docker compose stop

#remove docker compose
docker compose down