# mysql_cloudmanaged_databases

**MySQL setup for Azure**

**Create an Instance in Azure**
1. Log into the portal.azure.com
2. Steps:
  1. Select: Create a resource
  2. Select: Databases
  3. Select: Azure Database for MySQL
  4. Select: Flexible server
  5. Provide: server name, admin name, password, etc.
  6. Select: Networking
  7. Add: firewall rule name and start and end IP address
  8. Select: Review and create
  9. Select: Create
      
**Connect MySQL workbench to Azure instance**
1. Open MySQL Workbench
2. Create a new connection by clicking on plus sign.
3. Provide hostname, username, etc. from Azure. Hostname is equivalent to server name in Azure and username is equivalent to Admin name in Azure.
4. Select: OK for deployment     
