cd app
docker build -t nameko-test-app:latest .
cd ../push
docker build -t nameko-test-push:latest .
cd ../register
docker build -t nameko-test-register:latest .
cd ..

docker stop some-rabbit &
docker stop some-redis &
docker stop some-app &
docker stop some-push &
docker stop some-register &

sleep 15s

# docker network create my-net

docker run -d --rm --name some-rabbit --network my-net  --network-alias rabbitmq -p 15672:15672 -p 5672:5672 rabbitmq:3.8-management

docker run -d --rm --name some-redis --network my-net  --network-alias redis -p 6379:6379 redis:6.0-rc

sleep 5s

docker run -d --rm --name some-app --network my-net  --network-alias app -p 5000:5000 --env RABBITMQ_HOSTNAME=rabbitmq nameko-test-app:latest

docker run -d --rm --name some-push --network my-net  --network-alias push --env RABBITMQ_HOSTNAME=rabbitmq --env REDIS_HOST=redis nameko-test-push:latest

docker run -d --rm --name some-register --network my-net  --network-alias register --env RABBITMQ_HOSTNAME=rabbitmq --env REDIS_HOST=redis nameko-test-register:latest





