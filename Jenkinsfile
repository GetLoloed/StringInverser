pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                script {
                    if (isUnix()) {
                        sh 'make '
                    } else {
                        bat 'make'
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
                    sh 'chmod +x StringInverser'
                }
            }
        }

        stage('Nettoyage') {
            steps {
                script {
                    if (isUnix()) {
                        sh '''
                            make clean || true
                            if [ -d StringInverser ]; then
                                rm -rf StringInverser
                            fi
                        '''
                    } else {
                        bat '''
                            make clean || exit 0
                            if exist StringInverser (
                                if exist StringInverser\\NUL (
                                    rmdir /s /q StringInverser
                                ) else (
                                    del StringInverser
                                )
                            )
                        '''
                    }
                }
            }
        }
    }
}