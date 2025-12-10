@echo off
echo ========================================
echo Docker Build and Push Script
echo ========================================
echo.

REM Get Docker Hub username
set /p DOCKER_USERNAME="Enter your Docker Hub username: "

echo.
echo Logging into Docker Hub...
docker login

echo.
echo ========================================
echo Building Microservices...
echo ========================================

REM User Service
echo [1/7] Building user-service...
cd RevHub\microservices\user-service
docker build -t %DOCKER_USERNAME%/revhub-user-service:latest .
docker push %DOCKER_USERNAME%/revhub-user-service:latest
cd ..\..\..

REM Chat Service
echo [2/7] Building chat-service...
cd RevHub\microservices\chat-service
docker build -t %DOCKER_USERNAME%/revhub-chat-service:latest .
docker push %DOCKER_USERNAME%/revhub-chat-service:latest
cd ..\..\..

REM Feed Service
echo [3/7] Building feed-service...
cd RevHub\microservices\feed-service
docker build -t %DOCKER_USERNAME%/revhub-feed-service:latest .
docker push %DOCKER_USERNAME%/revhub-feed-service:latest
cd ..\..\..

REM Follow Service
echo [4/7] Building follow-service...
cd RevHub\microservices\follow-service
docker build -t %DOCKER_USERNAME%/revhub-follow-service:latest .
docker push %DOCKER_USERNAME%/revhub-follow-service:latest
cd ..\..\..

REM Notification Service
echo [5/7] Building notification-service...
cd RevHub\microservices\notification-service
docker build -t %DOCKER_USERNAME%/revhub-notification-service:latest .
docker push %DOCKER_USERNAME%/revhub-notification-service:latest
cd ..\..\..

REM Post Service
echo [6/7] Building post-service...
cd RevHub\microservices\post-service
docker build -t %DOCKER_USERNAME%/revhub-post-service:latest .
docker push %DOCKER_USERNAME%/revhub-post-service:latest
cd ..\..\..

REM Search Service
echo [7/7] Building search-service...
cd RevHub\microservices\search-service
docker build -t %DOCKER_USERNAME%/revhub-search-service:latest .
docker push %DOCKER_USERNAME%/revhub-search-service:latest
cd ..\..\..

echo.
echo ========================================
echo Building Frontend Apps...
echo ========================================

REM Shell App
echo [1/4] Building shell-app...
cd RevHub\frontend-mfe\shell-app
docker build -t %DOCKER_USERNAME%/revhub-shell-app:latest .
docker push %DOCKER_USERNAME%/revhub-shell-app:latest
cd ..\..\..

REM Chat MFE
echo [2/4] Building chat-mfe...
cd RevHub\frontend-mfe\chat-mfe
docker build -t %DOCKER_USERNAME%/revhub-chat-mfe:latest .
docker push %DOCKER_USERNAME%/revhub-chat-mfe:latest
cd ..\..\..

REM Feed MFE
echo [3/4] Building feed-mfe...
cd RevHub\frontend-mfe\feed-mfe
docker build -t %DOCKER_USERNAME%/revhub-feed-mfe:latest .
docker push %DOCKER_USERNAME%/revhub-feed-mfe:latest
cd ..\..\..

REM Profile MFE
echo [4/4] Building profile-mfe...
cd RevHub\frontend-mfe\profile-mfe
docker build -t %DOCKER_USERNAME%/revhub-profile-mfe:latest .
docker push %DOCKER_USERNAME%/revhub-profile-mfe:latest
cd ..\..\..

echo.
echo ========================================
echo SUCCESS! All images pushed to Docker Hub
echo ========================================
echo.
echo Your images:
echo - %DOCKER_USERNAME%/revhub-user-service:latest
echo - %DOCKER_USERNAME%/revhub-chat-service:latest
echo - %DOCKER_USERNAME%/revhub-feed-service:latest
echo - %DOCKER_USERNAME%/revhub-follow-service:latest
echo - %DOCKER_USERNAME%/revhub-notification-service:latest
echo - %DOCKER_USERNAME%/revhub-post-service:latest
echo - %DOCKER_USERNAME%/revhub-search-service:latest
echo - %DOCKER_USERNAME%/revhub-shell-app:latest
echo - %DOCKER_USERNAME%/revhub-chat-mfe:latest
echo - %DOCKER_USERNAME%/revhub-feed-mfe:latest
echo - %DOCKER_USERNAME%/revhub-profile-mfe:latest
echo.
pause
