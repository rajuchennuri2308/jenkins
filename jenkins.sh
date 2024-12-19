#STEP-1: INSTALLING GIT JAVA-1.8.0 MAVEN 
yum install git
#java-1.8.0-openjdk 
yum install maven -y
#sudo dnf update
#sudo dnf install java-1.8.0-amazon-corretto -y

#STEP-2: GETTING THE REPO (jenkins.io --> download -- > redhat)
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

#STEP-3: DOWNLOAD JAVA11
sudo yum clean all
sudo yum update -y
#sudo amazon-linux-extras enable java-openjdk11
#sudo yum install -y java-11-openjdk
sudo rpm --import https://yum.corretto.aws/corretto.key
sudo curl -L -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo
#sudo yum install -y java-11-amazon-corretto

#STEP-4 : Installing jenkins
yum install jenkins -y
update-alternatives --config java

#STEP-4: RESTARTING JENKINS (when we download service it will on stopped state)
systemctl start jenkins.service
systemctl status jenkins.service

exit
## end of the script##