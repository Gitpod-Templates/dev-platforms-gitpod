## Ressources
    # https://www.czerniga.it/2021/11/14/how-to-install-gitlab-using-docker-compose/
    # https://testdriven.io/blog/gitlab-ci-docker/



# Commands
docker exec -it gitlab-runner gitlab-runner register --url "http://gitlab-ce" --clone-url "http://gitlab-ce"



docker exec  gitlab-runner  \
gitlab-runner register \
--non-interactive \
--url "http://gitlab-ce" \
clone-url "http://gitlab-ce" \
--registration-token GR1348941ZysRKz6CrtxswQ3Lz5Qh \
--executor docker \
--description "mymicroservice-cicd" \
--docker-image "docker:stable" \
--docker-volumes /var/run/docker.sock:/var/run/docker.sock

