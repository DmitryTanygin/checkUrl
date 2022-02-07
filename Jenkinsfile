pipeline {
    agent any

    stages {
        stage('Run script'){
            input {
                message "Enter URL"
                ok "Ok"
                parameters {
                    string(name: 'URL')
                }
            }
            steps {
                sh 'chmod +x url.sh'
                sh './url.sh ${URL}'
            }
        }
        stage('Send mail'){
            steps {
                mail to: 'tanygin06@gmail.com',
                subject: "Status of pipeline: ${currentBuild.fullDisplayName}",
                body: "${BUILD_URL} has result ${currentBuild.currentResult}. See logfile: ${BUILD_URL}consoleText"
            }
        }
    }
}
