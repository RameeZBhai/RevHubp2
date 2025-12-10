# Push to Docker Hub - Simple Guide

## Prerequisites
1. ✅ Docker Desktop installed and running
2. ✅ Docker Hub account (free at https://hub.docker.com)

---

## Step 1: Create Docker Hub Account
If you don't have one:
1. Go to https://hub.docker.com
2. Sign up (free)
3. Remember your username

---

## Step 2: Run the Script

### Open Command Prompt and run:
```cmd
cd c:\Users\ramee\Downloads\RevHubP2Project
docker-build-push.bat
```

### The script will:
1. Ask for your Docker Hub username
2. Ask you to login to Docker Hub
3. Build all 11 Docker images (7 microservices + 4 frontend apps)
4. Push all images to Docker Hub

**Time:** 30-45 minutes (depending on your internet speed)

---

## Step 3: Verify

Check your images at: https://hub.docker.com/repositories/YOUR_USERNAME

You should see 11 repositories:
- revhub-user-service
- revhub-chat-service
- revhub-feed-service
- revhub-follow-service
- revhub-notification-service
- revhub-post-service
- revhub-search-service
- revhub-shell-app
- revhub-chat-mfe
- revhub-feed-mfe
- revhub-profile-mfe

---

## Troubleshooting

### "docker: command not found"
- Make sure Docker Desktop is running
- Restart Command Prompt

### "denied: requested access to the resource is denied"
- Run `docker login` again
- Enter correct username and password

### Build fails?
- Make sure you have `target/` folders in microservices
- Make sure you have `node_modules/` in frontend apps
- If missing, run `mvn clean install` for backend or `npm install` for frontend

---

## After Pushing to Docker Hub

Your images are now public and can be:
1. ✅ Pulled from anywhere: `docker pull YOUR_USERNAME/revhub-user-service`
2. ✅ Used in AWS ECS/EKS
3. ✅ Used in any cloud provider
4. ✅ Shared with your team

---

## Next: Deploy to AWS

Once images are pushed, you can deploy to AWS using the images from Docker Hub instead of AWS ECR.

Update the ECS task definitions to use:
```
YOUR_USERNAME/revhub-user-service:latest
```
instead of:
```
YOUR_AWS_ACCOUNT_ID.dkr.ecr.us-east-1.amazonaws.com/revhub/user-service:latest
```
