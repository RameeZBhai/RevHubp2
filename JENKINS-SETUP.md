# Jenkins Setup Guide

## 1. Start Jenkins with Docker

```bash
docker-compose -f docker-compose-jenkins.yml up -d
```

## 2. Access Jenkins

- Open browser: http://localhost:8090
- Get initial admin password:

```bash
docker exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword
```

## 3. Initial Setup

1. Copy the password from terminal
2. Paste it in Jenkins web UI
3. Click "Install suggested plugins"
4. Create admin user
5. Keep default Jenkins URL: http://localhost:8090

## 4. Install Required Plugins

Go to: **Manage Jenkins → Plugins → Available Plugins**

Install:
- Docker Pipeline
- Docker plugin
- Git plugin
- Pipeline plugin
- Credentials Binding Plugin

## 5. Configure Docker Hub Credentials

1. Go to: **Manage Jenkins → Credentials → System → Global credentials**
2. Click "Add Credentials"
3. Select "Username with password"
4. Username: `rameezshaik`
5. Password: `<your-dockerhub-password>`
6. ID: `dockerhub-credentials`
7. Click "Create"

## 6. Create Pipeline Job

1. Click "New Item"
2. Enter name: `RevHub-Pipeline`
3. Select "Pipeline"
4. Click "OK"
5. In Pipeline section:
   - Definition: "Pipeline script from SCM"
   - SCM: Git
   - Repository URL: `<your-git-repo-url>` (or use local path)
   - Script Path: `Jenkinsfile`
6. Click "Save"

## 7. Run Pipeline

1. Click "Build Now"
2. Monitor build progress in "Console Output"

## 8. Stop Jenkins

```bash
docker-compose -f docker-compose-jenkins.yml down
```

## Port Information

- Jenkins UI: http://localhost:8090
- Jenkins Agent: 50000

## Troubleshooting

### If Docker commands fail in Jenkins:
```bash
docker exec -u root jenkins chmod 666 /var/run/docker.sock
```

### View Jenkins logs:
```bash
docker logs jenkins -f
```

### Restart Jenkins:
```bash
docker restart jenkins
```
