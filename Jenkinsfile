pipeline {
    agent any

    stages {
        stage('Clonage') {
            steps {
                script {
                    // Cloner le dépôt GitHub
                    if (isUnix()) {
                        sh 'git clone https://github.com/csurqunix/StringInverser.git'
                    } else {
                        bat 'git clone https://github.com/csurqunix/StringInverser.git'
                    }
                }
            }
        }

        stage('Build') {
            steps {
                script {
                    // Compiler le programme
                    if (isUnix()) {
                        sh 'cd StringInverser && make'
                    } else {
                        bat 'cd StringInverser && make'
                    }
                }
            }
        }

        stage('Permissions') {
            when {
                expression { isUnix() }
            }
            steps {
                script {
                    sh 'cd StringInverser && chmod +x StringInverser'
                }
            }
        }

        stage('Nettoyage') {
            steps {
                script {
                    if (isUnix()) {
                        sh 'cd StringInverser && make clean'
                    } else {
                        bat 'cd StringInverser && make clean'
                    }
                }
            }
        }
    }
}