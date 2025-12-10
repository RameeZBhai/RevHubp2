# Run RevHub with Consul

## Start All Services with Consul

```powershell
cd c:\Users\ramee\Downloads\RevHubP2Project
docker-compose up -d
```

This will start:
- ✅ Consul (Service Discovery) - http://localhost:8500
- ✅ MySQL Database
- ✅ MongoDB Database
- ✅ All 7 Microservices
- ✅ Frontend Shell App - http://localhost:4200

---

## Check Status

```powershell
docker-compose ps
```

---

## View Logs

```powershell
# All services
docker-compose logs -f

# Specific service
docker-compose logs -f user-service
docker-compose logs -f consul
```

---

## Access URLs

- **Frontend:** http://localhost:4200
- **Consul UI:** http://localhost:8500
- **User Service:** http://localhost:8080
- **Chat Service:** http://localhost:8081
- **Feed Service:** http://localhost:8082
- **Follow Service:** http://localhost:8083
- **Notification Service:** http://localhost:8084
- **Post Service:** http://localhost:8085
- **Search Service:** http://localhost:8086

---

## Stop All Services

```powershell
docker-compose down
```

---

## Restart Services

```powershell
docker-compose restart
```

---

## Remove Everything (including volumes)

```powershell
docker-compose down -v
```
