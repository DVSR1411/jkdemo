pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
            }
        }
        stage('World') {
            steps {
                echo 'Hello Sathwik'
            }
        }
        stage('env') {
            steps {
                echo env.BUILD_ID
                echo env.JENKINS_HOME
                echo env.JOB_NAME
            }
        }
    }
}
