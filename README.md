# jenkins
docker run -itd -v v1:/var/jenkins_home --restart=on-failure /run/docker.sock:/run/docker.sock -v /usr/bin/docker:/bin/docker  -p 8080:8080 -p 50000:50000 jenkins/jenkins
#docker exec cont id  for password 
pass=8a350f1f7f1f43458277382bd691e439
user =jaya
