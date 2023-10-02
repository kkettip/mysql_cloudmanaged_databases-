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
  7. Add: firewall rule name and start and end IP address (Start: 0.0.0.0, End: 255.255.255.255)
  8. Select: Review and create
  9. Select: Create
      
**Connect MySQL workbench to Azure instance**
1. Open MySQL Workbench
2. Create a new connection by clicking on plus sign.
3. Provide hostname, username, etc. from Azure. Hostname is equivalent to server name in Azure and username is equivalent to Admin name in Azure.
4. Select: OK for deployment     

**MYSQL setup for GCP**

**Create an Instance in GCP**

1. Log into the console.cloud.google.com.
2. Steps:
   1. Select: Select a project
   2. Select: New Project
   3. Provide requested information
   4. Select: Create
   5. Select: SQL
   6. Select: Create Instance
   7. Select: MySQL
   8. Select: Next
   9. Enable API
   10. Select:MySQL 8
   11. Select: Enterprise
   12. Select: Sandbox
   13. Select: Shared core 1vCPU/.614gb RAM
   14. Input: public IP address and 0.0.0.0/0 network
   15. Select: Create for deployment
       
**Connect MySQL workbench to GCP instance**
1. Open MySQL Workbench
2. Create a new connection by clicking on plus sign.
3. Provide hostname, username, etc. 
4. Select: OK for deployment     

**Errors Encountered**
1. Azure instance was not able to connect to MYSQL workbench when the firewall was not added. Issue was resolved by adding the firewall that allow for public access with a Start IP address of 0.0.0.0 and End IP address of 255.255.255.255.
