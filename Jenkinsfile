pipeline {
    agent any
    
    environment {
        DOCKER_HUB_CREDENTIALS = credentials('dockerhub-credentials')
        DOCKER_HUB_USERNAME = 'rameezshaik'
    }
    
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        
        stage('Build Microservices') {
            parallel {
                stage('User Service') {
                    steps {
                        dir('RevHub/microservices/user-service') {
                            bat 'mvn clean package -DskipTests'
                            bat "docker build -t ${DOCKER_HUB_USERNAME}/revhub-user-service:latest ."
                        }
                    }
                }
                stage('Chat Service') {
                    steps {
                        dir('RevHub/microservices/chat-service') {
                            bat 'mvn clean package -DskipTests'
                            bat "docker build -t ${DOCKER_HUB_USERNAME}/revhub-chat-service:latest ."
                        }
                    }
                }
                stage('Feed Service') {
                    steps {
                        dir('RevHub/microservices/feed-service') {
                            bat 'mvn clean package -DskipTests'
                            bat "docker build -t ${DOCKER_HUB_USERNAME}/revhub-feed-service:latest ."
                        }
                    }
                }
                stage('Follow Service') {
                    steps {
                        dir('RevHub/microservices/follow-service') {
                            bat 'mvn clean package -DskipTests'
                            bat "docker build -t ${DOCKER_HUB_USERNAME}/revhub-follow-service:latest ."
                        }
                    }
                }
                stage('Notification Service') {
                    steps {
                        dir('RevHub/microservices/notification-service') {
                            bat 'mvn clean package -DskipTests'
                            bat "docker build -t ${DOCKER_HUB_USERNAME}/revhub-notification-service:latest ."
                        }
                    }
                }
                stage('Post Service') {
                    steps {
                        dir('RevHub/microservices/post-service') {
                            bat 'mvn clean package -DskipTests'
                            bat "docker build -t ${DOCKER_HUB_USERNAME}/revhub-post-service:latest ."
                        }
                    }
                }
                stage('Search Service') {
                    steps {
                        dir('RevHub/microservices/search-service') {
                            bat 'mvn clean package -DskipTests'
                            bat "docker build -t ${DOCKER_HUB_USERNAME}/revhub-search-service:latest ."
                        }
                    }
                }
            }
        }
        
        stage('Build Frontend') {
            steps {
                dir('RevHub/frontend-mfe/shell-app') {
                    bat "docker build -t ${DOCKER_HUB_USERNAME}/revhub-shell-app:latest ."
                }
            }
        }
        
        stage('Push to Docker Hub') {
            steps {
                script {
                    bat "echo %DOCKER_HUB_CREDENTIALS_PSW% | docker login -u %DOCKER_HUB_CREDENTIALS_USR% --password-stdin"
                    
                    def services = [
                        'user-service', 'chat-service', 'feed-service', 
                        'follow-service', 'notification-service', 'post-service', 
                        'search-service', 'shell-app'
                    ]
                    
                    services.each { service ->
                        bat "docker push ${DOCKER_HUB_USERNAME}/revhub-${service}:latest"
                    }
                }
            }
        }
        
        stage('Deploy') {
            steps {
                bat 'docker-compose down'
                bat 'docker-compose up -d'
            }
        }
    }
    
    post {
        always {
            bat 'docker logout'
        }
        success {
            echo 'Pipeline executed successfully!'
        }
        failure {
            echo 'Pipeline failed!'
        }
    }
}
