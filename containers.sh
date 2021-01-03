
startcontainer() {
sudo cp /home/cam/initConf/compose/$1docker-compose.yaml /home/cam/$1docker-compose.yaml
cd /home/cam/$1
docker-compose up -d
}

cd /home/cam/initConf/compose/
for d in */ ; do
    startcontainer $d

cd /home/cam/initConf/compose/
done
