# Jenkins Setup Steps for RevHub Project

## Step 1: Access Jenkins
- Open browser: **http://localhost:8080**
- Login with your credentials

## Step 2: Install Required Plugins
1. Click **Manage Jenkins** (left sidebar)
2. Click **Plugins**
3. Click **Available plugins** tab
4. Search and install these plugins:
   - **Docker Pipeline**
   - **Pipeline**
   - **Git plugin**
5. Click **Install** button
6. Wait for installation to complete
7. Click **Restart Jenkins when installation is complete**

## Step 3: Add Docker Hub Credentials
1. Go to **Manage Jenkins** → **Credentials**
2. Click **System** → **Global credentials (unrestricted)**
3. Click **Add Credentials** button
4. Fill in:
   - **Kind**: Username with password
   - **Username**: `rameezshaik`
   - **Password**: [Your Docker Hub Password]
   - **ID**: `dockerhub-credentials`
   - **Description**: Docker Hub Credentials
5. Click **Create**

## Step 4: Create Pipeline Job
1. Click **New Item** (left sidebar)
2. Enter item name: `RevHub-Pipeline`
3. Select **Pipeline**
4. Click **OK**

## Step 5: Configure Pipeline
In the configuration page:

### General Section:
- Check **GitHub project** (optional)
- Project url: `https://github.com/your-repo` (if applicable)

### Pipeline Section:
1. **Definition**: Select `Pipeline script from SCM`
2. **SCM**: Select `Git`
3. **Repository URL**: `file:///C:/Users/ramee/Downloads/RevHubP2Project`
4. **Branches to build**: `*/main` (or `*/master`)
5. **Script Path**: `Jenkinsfile`
6. Click **Save**

## Step 6: Run the Pipeline
1. Click **Build Now** (left sidebar)
2. Watch the build progress in **Build History**
3. Click on the build number (e.g., #1)
4. Click **Console Output** to see logs

## Step 7: After Build Completes
1. All Docker images will be built and pushed to Docker Hub
2. Services will be deployed via docker-compose
3. Check build status: Green = Success, Red = Failed

## Troubleshooting

### If build fails with "Docker not found":
```bash
# In Jenkins container, install Docker CLI
docker exec -u root jenkins apt-get update
docker exec -u root jenkins apt-get install -y docker.io
```

### If Maven not found:
1. Go to **Manage Jenkins** → **Tools**
2. Scroll to **Maven installations**
3. Click **Add Maven**
4. Name: `Maven`
5. Check **Install automatically**
6. Save

### View Jenkins Logs:
- Check console output in Jenkins UI
- Or check terminal where Jenkins is running

## Pipeline Stages
The Jenkinsfile will execute these stages:
1. **Checkout** - Get code from repository
2. **Build Microservices** - Build all 7 services in parallel
3. **Build Frontend** - Build shell-app
4. **Push to Docker Hub** - Push all images
5. **Deploy** - Run docker-compose up

## Expected Build Time
- First build: 15-20 minutes
- Subsequent builds: 5-10 minutes (with caching)
