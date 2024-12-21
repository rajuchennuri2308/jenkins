#STEP-1: INSTALLING MAVEN 
yum install maven -y

#STEP-2: GETTING THE REPO (jenkins.io --> download -- > redhat)
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

#STEP-3: DOWNLOAD JAVA11
sudo yum clean all
sudo yum update -y
sudo rpm --import https://yum.corretto.aws/corretto.key
sudo curl -L -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo
sudo yum install fontconfig java-17-openjdk -y

#STEP-4 : INSTALLING DOCKER
sudo yum install docker -y
sudo systemctl enable docker.service

#STEP-5 : Installing jenkins
sudo yum install jenkins -y
sudo systemctl enable jenkins.service

#STEP-6: RESTARTING JENKINS (when we download service it will on stopped state)
systemctl daemon-reload
systemctl restart docker.service
systemctl restart jenkins.service
sudo usermod -a -G docker jenkins
exit
echo "end of the script"
