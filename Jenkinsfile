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
    environment {
        TOKEN = credentials("dop_v1_a28892aadded52b2055e076d73ace37fb2753b587379c151052156b651b0646b")
    }
    stages {
        stage('Ejemplo') {
            steps {
                sh 'echo $TOKEN'
            }
        }
    }
}


