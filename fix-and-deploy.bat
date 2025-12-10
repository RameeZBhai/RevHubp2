@echo off
echo Rebuilding all services with Consul enabled...

cd RevHub\microservices

echo [1/7] Building user-service...
cd user-service
call mvn clean install -DskipTests
docker build -t rameezshaik/revhub-user-service:latest .
docker push rameezshaik/revhub-user-service:latest
cd ..

echo [2/7] Building chat-service...
cd chat-service
call mvn clean install -DskipTests
docker build -t rameezshaik/revhub-chat-service:latest .
docker push rameezshaik/revhub-chat-service:latest
cd ..

echo [3/7] Building feed-service...
cd feed-service
call mvn clean install -DskipTests
docker build -t rameezshaik/revhub-feed-service:latest .
docker push rameezshaik/revhub-feed-service:latest
cd ..

echo [4/7] Building follow-service...
cd follow-service
call mvn clean install -DskipTests
docker build -t rameezshaik/revhub-follow-service:latest .
docker push rameezshaik/revhub-follow-service:latest
cd ..

echo [5/7] Building notification-service...
cd notification-service
call mvn clean install -DskipTests
docker build -t rameezshaik/revhub-notification-service:latest .
docker push rameezshaik/revhub-notification-service:latest
cd ..

echo [6/7] Building post-service...
cd post-service
call mvn clean install -DskipTests
docker build -t rameezshaik/revhub-post-service:latest .
docker push rameezshaik/revhub-post-service:latest
cd ..

echo [7/7] Building search-service...
cd search-service
call mvn clean install -DskipTests
docker build -t rameezshaik/revhub-search-service:latest .
docker push rameezshaik/revhub-search-service:latest
cd ..

cd ..\..
echo Restarting services...
docker-compose down
docker-compose up -d

echo Done! Wait 2 minutes then check http://localhost:8500
pause
