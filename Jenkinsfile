
// pipeline {
//    agent any
//     stages {
//       stage('Checkout') {
//          steps {
//             checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/<YamiGomez14>/<2do-Parcial-AlgoParalelos>.git']]])
//          }
//       }
//       stage('Terraform Init') {
//          steps {
//             sh 'terraform init'
//          }
//       }
//    post {
//       always {
//          sh 'terraform destroy -auto-approve'
//       }
//    }
// }

// }

        
pipeline {
    agent any
//    environment {
//       DIGITALOCEAN_TOKEN = credentials("dop_v1_a28892aadded52b2055e076d73ace37fb2753b587379c151052156b651b0646b")
//    }
   stages {
        stage('terraform') {
            steps {
                sh '''
                    terraform --version
                    terraform init
                    terraform apply -auto-approve"
                '''
            }
      }
   }
}
