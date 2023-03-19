// pipeline {
//   agent any
//   stages {
//     stage('Checkout') {
//       steps {
//         // Agregar los pasos de checkout aquí
//       }
//     }
    
//     stage('Terraform Init') {
//       steps {
//         // Agregar los pasos de Terraform Init aquí
//       }
//     }
//     stage('Terraform Apply') {
//       steps {
//         // Agregar los pasos de Terraform Apply aquí
//       }
//     }
//   }
// }


pipeline {
   agent any
   stages {
        stage('terraform') {
            steps {
                sh '''
                    terraform --version
                    terraform init
                    terraform apply -auto-approve
                '''
        }   }
   }
   
}


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
//       stage('Tarea') {
//          steps {
//             sh 'comando_tarea'
//          }
//       }
//    }
//    post {
//       always {
//          sh 'terraform destroy -auto-approve'
//       }
//    }
// }

        



