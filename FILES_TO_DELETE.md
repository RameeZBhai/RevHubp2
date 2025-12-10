# Files to Remove Before AWS Deployment

## Summary
Total categories of files to remove:
1. **Build Artifacts** (Maven target folders)
2. **Node Dependencies** (node_modules folders)
3. **Build Cache** (.angular folders)
4. **Log Files** (.log files)
5. **Windows-Specific Scripts** (.bat files)
6. **Redundant Documentation** (Multiple README/MD files)

---

## 1. BUILD ARTIFACTS (Maven - Java Microservices)
**Safe to delete - Will be regenerated during build**

### Target Directories (7 folders):
```
c:\Users\ramee\Downloads\RevHubP2Project\RevHub\microservices\chat-service\target\
c:\Users\ramee\Downloads\RevHubP2Project\RevHub\microservices\feed-service\target\
c:\Users\ramee\Downloads\RevHubP2Project\RevHub\microservices\follow-service\target\
c:\Users\ramee\Downloads\RevHubP2Project\RevHub\microservices\notification-service\target\
c:\Users\ramee\Downloads\RevHubP2Project\RevHub\microservices\post-service\target\
c:\Users\ramee\Downloads\RevHubP2Project\RevHub\microservices\search-service\target\
c:\Users\ramee\Downloads\RevHubP2Project\RevHub\microservices\user-service\target\
```

---

## 2. NODE DEPENDENCIES (Frontend - Angular Apps)
**Safe to delete - Will be reinstalled via npm install**

### Node Modules Directories (4 main folders + nested):
```
c:\Users\ramee\Downloads\RevHubP2Project\RevHub\frontend-mfe\chat-mfe\node_modules\
c:\Users\ramee\Downloads\RevHubP2Project\RevHub\frontend-mfe\feed-mfe\node_modules\
c:\Users\ramee\Downloads\RevHubP2Project\RevHub\frontend-mfe\profile-mfe\node_modules\
c:\Users\ramee\Downloads\RevHubP2Project\RevHub\frontend-mfe\shell-app\node_modules\
```

**Note:** These folders contain hundreds of nested node_modules and are VERY large (typically 200MB+ each)

---

## 3. BUILD CACHE (Angular Build Cache)
**Safe to delete - Will be regenerated during build**

### .angular Directories (4 folders):
```
c:\Users\ramee\Downloads\RevHubP2Project\RevHub\frontend-mfe\chat-mfe\.angular\
c:\Users\ramee\Downloads\RevHubP2Project\RevHub\frontend-mfe\feed-mfe\.angular\
c:\Users\ramee\Downloads\RevHubP2Project\RevHub\frontend-mfe\profile-mfe\.angular\
c:\Users\ramee\Downloads\RevHubP2Project\RevHub\frontend-mfe\shell-app\.angular\
```

---

## 4. LOG FILES
**Safe to delete - Development logs**

### Log Files (1 file found):
```
c:\Users\ramee\Downloads\RevHubP2Project\RevHub\microservices\chat-service\chat-service.log
```

---

## 5. WINDOWS-SPECIFIC SCRIPTS (.bat files)
**Can be deleted - Not needed for AWS deployment (Linux-based)**

### Root Level Scripts:
```
c:\Users\ramee\Downloads\RevHubP2Project\CREATE-MICROFRONTEND.bat
```

### RevHub Level Scripts:
```
c:\Users\ramee\Downloads\RevHubP2Project\RevHub\add-consul-to-all-services.bat
c:\Users\ramee\Downloads\RevHubP2Project\RevHub\clear-all-data.bat
c:\Users\ramee\Downloads\RevHubP2Project\RevHub\RUN-MICROFRONTEND.bat
c:\Users\ramee\Downloads\RevHubP2Project\RevHub\START-APPLICATION.bat
c:\Users\ramee\Downloads\RevHubP2Project\RevHub\START-REVHUB.bat
```

### Frontend Scripts:
```
c:\Users\ramee\Downloads\RevHubP2Project\RevHub\frontend-mfe\start-all.bat
c:\Users\ramee\Downloads\RevHubP2Project\RevHub\frontend-mfe\stop-all.bat
c:\Users\ramee\Downloads\RevHubP2Project\RevHub\frontend-mfe\TEST-FEED-UI.bat
c:\Users\ramee\Downloads\RevHubP2Project\RevHub\frontend-mfe\feed-mfe\RESTART.bat
c:\Users\ramee\Downloads\RevHubP2Project\RevHub\frontend-mfe\shell-app\RESTART.bat
```

### Microservices Scripts:
```
c:\Users\ramee\Downloads\RevHubP2Project\RevHub\microservices\check-services.bat
c:\Users\ramee\Downloads\RevHubP2Project\RevHub\microservices\final-status.bat
c:\Users\ramee\Downloads\RevHubP2Project\RevHub\microservices\start-all-services.bat
c:\Users\ramee\Downloads\RevHubP2Project\RevHub\microservices\test-endpoints.bat
c:\Users\ramee\Downloads\RevHubP2Project\RevHub\microservices\feed-service\REBUILD-SERVICE.bat
```

---

## 6. REDUNDANT DOCUMENTATION FILES
**Optional to delete - Reduces clutter**

### Root Level Documentation:
```
c:\Users\ramee\Downloads\RevHubP2Project\INTEGRATION-COMPLETE.md
c:\Users\ramee\Downloads\RevHubP2Project\MICROFRONTEND-PROJECT-SETUP.md
```

### RevHub Level Documentation:
```
c:\Users\ramee\Downloads\RevHubP2Project\RevHub\CHAT-BUGS-FIXED.md
c:\Users\ramee\Downloads\RevHubP2Project\RevHub\CONSUL-ADDED-SUMMARY.md
c:\Users\ramee\Downloads\RevHubP2Project\RevHub\CONSUL-DEPLOYMENT-GUIDE.md
c:\Users\ramee\Downloads\RevHubP2Project\RevHub\DASHBOARD-INTEGRATION.md
c:\Users\ramee\Downloads\RevHubP2Project\RevHub\FIX-FEED-SERVICE-AUTHOR-INFO.md
c:\Users\ramee\Downloads\RevHubP2Project\RevHub\HOW-TO-USE-CONSUL.md
c:\Users\ramee\Downloads\RevHubP2Project\RevHub\INSTAGRAM-STYLE-COMPLETE.md
c:\Users\ramee\Downloads\RevHubP2Project\RevHub\MICRO-FRONTEND-SETUP-GUIDE.md
c:\Users\ramee\Downloads\RevHubP2Project\RevHub\README-FINAL.md
c:\Users\ramee\Downloads\RevHubP2Project\RevHub\SIMPLE-MICROFRONTEND-SETUP.md
```

### Service-Level Documentation (Keep these - they're useful):
```
c:\Users\ramee\Downloads\RevHubP2Project\RevHub\frontend-mfe\README.md
c:\Users\ramee\Downloads\RevHubP2Project\RevHub\microservices\README.md
c:\Users\ramee\Downloads\RevHubP2Project\RevHub\microservices\chat-service\README.md
c:\Users\ramee\Downloads\RevHubP2Project\RevHub\microservices\feed-service\README.md
c:\Users\ramee\Downloads\RevHubP2Project\RevHub\microservices\follow-service\README.md
c:\Users\ramee\Downloads\RevHubP2Project\RevHub\microservices\notification-service\README.md
c:\Users\ramee\Downloads\RevHubP2Project\RevHub\microservices\post-service\README.md
c:\Users\ramee\Downloads\RevHubP2Project\RevHub\microservices\search-service\README.md
c:\Users\ramee\Downloads\RevHubP2Project\RevHub\microservices\user-service\README.md
```

---

## 7. DEVELOPMENT/TEST SCRIPTS
**Optional to delete - Not needed in production**

### Database Scripts (Keep for reference):
```
c:\Users\ramee\Downloads\RevHubP2Project\RevHub\microservices\clear-mysql-dbs.sql
c:\Users\ramee\Downloads\RevHubP2Project\RevHub\microservices\drop-mysql.sql
c:\Users\ramee\Downloads\RevHubP2Project\RevHub\clear-mongodb.js
c:\Users\ramee\Downloads\RevHubP2Project\RevHub\microservices\chat-service\clear-chat-data.js
```

---

## ESTIMATED SPACE SAVINGS

| Category | Estimated Size |
|----------|---------------|
| node_modules (4 folders) | ~800MB - 1.2GB |
| target folders (7 folders) | ~200MB - 500MB |
| .angular cache (4 folders) | ~50MB - 100MB |
| .bat files | < 1MB |
| Documentation files | < 5MB |
| **TOTAL SAVINGS** | **~1GB - 1.8GB** |

---

## RECOMMENDATION

### MUST DELETE (for AWS deployment):
1. ✅ All `target/` folders
2. ✅ All `node_modules/` folders
3. ✅ All `.angular/` folders
4. ✅ All `.log` files
5. ✅ All `.bat` files

### OPTIONAL DELETE (reduces clutter):
6. ⚠️ Redundant documentation files (keep service-level READMEs)

### KEEP:
- ✅ Source code (`src/` folders)
- ✅ Configuration files (`pom.xml`, `package.json`, `angular.json`, etc.)
- ✅ Dockerfiles
- ✅ docker-compose.yml files
- ✅ Database initialization scripts (`init-db.sql`, `init-mongo.js`)
- ✅ Service-level README files

---

## NEXT STEPS

Would you like me to:
1. **Delete all recommended files automatically** (categories 1-5)
2. **Delete only specific categories** (you choose which ones)
3. **Create a backup first** before deleting anything

Let me know your preference!
