node('built-in'){
// pipeline{
   cleanWs() 
   
    stage('Checkout'){
        checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: '7859730a-ccbf-441f-9574-062f5543a813', url: 'git@github.com:hattamksa/golang_hello.git']]])
    }
    
    stage("load config & build"){
       configFileProvider([configFile(fileId: '05fb8644-d582-4438-ad64-473d59c269ea', targetLocation: '.env')]) {
            // some block
        }
    }
}