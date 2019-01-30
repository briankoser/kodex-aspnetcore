# kodex
Koser family site, written in ASP.NET Core MVC

## To Develop
1. Clone repo
2. Create GitHub\kodex\src\web\wwwroot\css folder
3. Place Concourse fonts in \Github\kodex\src\web\wwwroot\fonts\concourse
4. Set connection strings
    1. Right-click Web project and click "Manage user secrets"
    2. Set file to below
    3. Replace {value}s with actual values
5. Build

### User Secrets
```
{
  "ConnectionStrings": {
    "KodexDBConnectionString": "Server={server};Database={database};User ID={userid};Password={password};MultipleActiveResultSets=true"
  }
}
