@echo off
echo ========================================
echo Jenkins Setup for RevHub Project
echo ========================================
echo.

echo Step 1: Checking if Jenkins is running...
netstat -ano | findstr :8090 >nul
if %errorlevel% equ 0 (
    echo Jenkins is already running on port 8090
    echo Access it at: http://localhost:8090
) else (
    echo Jenkins is not running. Please start it first.
    echo Run: java -jar jenkins.war --httpPort=8090
    exit /b 1
)

echo.
echo Step 2: Opening Jenkins in browser...
start http://localhost:8090

echo.
echo ========================================
echo MANUAL STEPS REQUIRED:
echo ========================================
echo.
echo 1. LOGIN TO JENKINS (if not already logged in)
echo.
echo 2. INSTALL PLUGINS:
echo    - Go to: Manage Jenkins ^> Plugins ^> Available Plugins
echo    - Search and install: "Docker Pipeline"
echo    - Search and install: "Pipeline"
echo    - Click "Install" and wait for completion
echo.
echo 3. ADD DOCKER HUB CREDENTIALS:
echo    - Go to: Manage Jenkins ^> Credentials ^> System ^> Global credentials
echo    - Click "Add Credentials"
echo    - Kind: Username with password
echo    - Username: rameezshaik
echo    - Password: [YOUR DOCKER HUB PASSWORD]
echo    - ID: dockerhub-credentials
echo    - Click "Create"
echo.
echo 4. CREATE PIPELINE JOB:
echo    - Click "New Item"
echo    - Name: RevHub-Pipeline
echo    - Type: Pipeline
echo    - Click "OK"
echo    - In Pipeline section:
echo      * Definition: Pipeline script from SCM
echo      * SCM: Git
echo      * Repository URL: file:///C:/Users/ramee/Downloads/RevHubP2Project
echo      * Branch: */main (or */master)
echo      * Script Path: Jenkinsfile
echo    - Click "Save"
echo.
echo 5. RUN THE PIPELINE:
echo    - Click "Build Now"
echo    - Monitor progress in "Console Output"
echo.
echo ========================================
echo.
pause
