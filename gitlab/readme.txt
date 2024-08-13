#https://www.czerniga.it/2021/11/14/how-to-install-gitlab-using-docker-compose/

docker exec -it gitlab-runner gitlab-runner register --url "http://gitlab-ce" --clone-url "http://gitlab-ce"