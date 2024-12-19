#STEP-1: INSTALLING GIT 

ECH0 ##########INSTALLING GIT ########
yum install git -y

#STEP-2: INSTALLING MAVEN

ECHO ##########INSTALLING MAVEN ###########
yum install maven -y

#step-4: INSTALLING java

ECHO #########INSTALLING JAVA#######

sudo yum install fontconfig java-17-openjdk-y

#STEP-4: GETTING THE REPO (jenkins.io --> download -- > redhat)
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

#STEP-5 : Installing jenkins
yum install jenkins -y
update-alternatives --config java
sudo systemctl daemon-reload

#STEP-6: RESTARTING JENKINS (when we download service it will on stopped state)
systemctl start jenkins.service
systemctl status jenkins.service

exit
## end of the script##