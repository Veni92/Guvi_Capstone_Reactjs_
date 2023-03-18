set -e
echo "Deploying image"
docker stop $(docker ps -a -q) || true
docker rm $(docker ps -a -q) || true
docker-compose up -d
sleep 20
docker ps
