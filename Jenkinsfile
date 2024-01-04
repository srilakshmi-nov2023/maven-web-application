node{
    
    def mavenhome = tool name: "Maven3.9.4"
    
    stage("checkout to Github"){
        git branch: 'development', credentialsId: '93fc70f2-ce3a-49ff-ac4f-edb7411139e7', url: 'https://github.com/srilakshmi-nov2023/maven-web-application.git'
        
    }
    
    stage("Go To Maven Server for build"){
     sh "${mavenhome}/bin/mvn clean package"   
    
    }
    
    stage("Execute sonarqube report"){
     sh "${mavenhome}/bin/mvn clean sonar:sonar"   
    }
    
    /*stage("Artifact Repository in Nexus"){
    
        sh"${mavenhome}/bin/mvn clean deploy"
    }
    
    stage("Deploy App into the Tomcat Server"){
    
    sshagent(['24cf2d0b-ad99-4b8e-ad92-61afd12e6d41']) {
    sh "scp -o  StrictHostKeyChecking=no target/maven-web-application.war ec2-user@172.31.18.250:/opt/apache-tomcat-9.0.84/webapps/"
}
}*/
    }//node closing
