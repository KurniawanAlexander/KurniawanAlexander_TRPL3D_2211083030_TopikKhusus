
#runing the app via docker compose
docker compose create
#running docker compose
docker compose up -d
#check the status of the containers
docker compose ps
#check the logs of the containers
docker compose logs -f
#check the status of the containers again
access http://localhost:3000


#MULTI STAGE DOCKERFILE
#RUNNING ENV DEV
cd node_app/dev
#runing the app via docker compose
docker compose create
#running docker compose
docker compose up -d
access http://localhost:3000/

#RUNNING ENV STAGING
cd node_app/staging
#runing the app via docker compose
docker compose create
#running docker compose
docker compose up -d
access http://localhost:3001/