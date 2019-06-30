# kodex
Koser family site, written in ASP.NET Core MVC

## To Develop
1. Clone repo
2. Build
3. If task runner task fails, create `GitHub\kodex\src\web\wwwroot\css` folder
4. Set connection strings
    1. Right-click Web project and click "Manage user secrets"
    2. Set file to below
    3. Replace {value}s with actual values
5. Place Concourse fonts in `\Github\kodex\src\web\wwwroot\fonts\concourse`

### User Secrets
```
{
  "ConnectionStrings": {
    "KodexDBConnectionString": "Server={server};Database={database};User ID={userid};Password={password};MultipleActiveResultSets=true"
  }
}
```

## To Deploy
1. In VS, Build > Publish
2. New Profile...
3. IIS, FTP, etc
4. Create profile
5. Enter Connection info
   1. Publish method: Web Deploy
   2. Server: <FTP server IP address>
   3. Site name: koser.us
   4. User name: <FTP username>
   5. Password: <FTP password>
   6. Destination URL: http://koser.us
6. Enter Settings info
   1. Configuration: Release
   2. Target framework: netcoreapp2.1
   3. Deployment Mode: Framework-Dependent
   4. Target Runtime: Portable
   5. File Publish Options: Do not remove additional files at destination
   6. Databases > KodexDBConnectionString
      1. Use this connection string at runtime
      2. KodexDBConnectionString from User Secrets in above section
