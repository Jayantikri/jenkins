## jenkins
docker run -itd -v v1:/var/jenkins_home --restart=on-failure /run/docker.sock:/run/docker.sock -v /usr/bin/docker:/bin/docker  -p 8080:8080 -p 50000:50000 jenkins/jenkins
### docker exec cont id  for password 
pass=8a350f1f7f1f43458277382bd691e439
user =jaya

## execute shell code deploy commands
docker ps #to check docker is running or not
cd $JENKINS_HOME/workspace/code1/
ls
### to change directory for dockerfile
docker build -t jaya91/apachej:1.0.0 .  #to build image
docker images #to check image
## host deploy coomands
docker run -itd --name pk -p 1144:80  jaya91/apachej:1.0.0
##jenkins agent install command
docker run -i -v /run/docker.sock:/run/docker.sock -v /usr/bin/docker:/bin/docker  --rm --name agent3  --init jenkins/agent java -jar /usr/share/jenkins/agent.jar
