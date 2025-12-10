@echo off
echo Starting Consul...
docker run -d --name consul -p 8500:8500 -p 8600:8600/udp consul agent -server -ui -bootstrap-expect=1 -client=0.0.0.0

echo.
echo Consul is starting...
echo Wait 10 seconds then open: http://localhost:8500
echo.
pause
