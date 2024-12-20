#STEP-1: INSTALLING GIT JAVA-1.8.0 MAVEN 
yum install git -y
#java-1.8.0-openjdk 
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

#STEP-4 : Installing jenkins
yum install jenkins -y


#STEP-5: RESTARTING JENKINS (when we download service it will on stopped state)
systemctl daemon-reload
systemctl start jenkins.service
sudo usermod -a -G docker jenkins
systemctl status jenkins.service

exit
