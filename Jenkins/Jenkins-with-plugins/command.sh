docker network create jenkins
docker volume create jenkins-data


docker build -t myjenkins-blueocean:v1 .


#Just try to give the right permission to docker.sock file by:
sudo chmod 666 /var/run/docker.sock

docker run \
  --name jenkins-blueocean \
  --restart=on-failure \
  --detach \
  --privileged \
  --network jenkins \
  --volume  /var/run/docker.sock:/var/run/docker.sock \
  --publish 8080:8080 \
  --publish 50000:50000 \
  --volume jenkins-data:/var/jenkins_home \
  myjenkins-blueocean:v1