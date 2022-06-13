pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                // Get some code from a GitHub repository
                // git branch: 'main', url: 'https://github.com/mpa19/hello-springrest.git'

                // Run Gradle a Unix agent.
                sh "./gradlew test assemble"
            }

            post {
                // If Gradle was able to run the tests, even if some of the test
                // failed, record the test results and archive the jar file.
                success {
                    junit 'build/test-results/**/*.xml'
                    archiveArtifacts artifacts: 'build/libs/*.jar', fingerprint: true, followSymlinks: false
                }
            }
        }

        stage('Publish'){
            sshagent(['github-shh']) {
                steps {
                    sh 'git tag BUILD-1.0.${BUILD_NUMBER}'
                    sh 'git push --tags'
                }
            }
        }
    }
}
