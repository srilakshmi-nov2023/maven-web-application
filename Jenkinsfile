node{

def mavenHome = tool name: "Maven3.9.4"

stage('CheckOutCode'){
git branch: 'development', credentialsId: '93fc70f2-ce3a-49ff-ac4f-edb7411139e7', url: 'https://github.com/srilakshmi-nov2023/maven-web-application.git'
}

stage('Build'){
sh "${mavenHome}/bin/mvn clean package"
}

stage("ExecuteSonarQubeReport"){
sh "${mavenHome}/bin/mvn clean sonar:sonar"

}
stage('Deploy into artifactory'){
 sh "${mavenHome}/bin/mvn clean deploy"   
}
/*stage("Deploy into TomcatServer"){
sshagent(['24cf2d0b-ad99-4b8e-ad92-61afd12e6d41']){
    sh "scp -o  StrictHostKeyChecking=no target/maven-web-application srilakshmi@172.31.18.250:/opt/apache-tomcat-9.0.84/webapps/

}
}*/
}
