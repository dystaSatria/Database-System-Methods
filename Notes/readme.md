# Worm Notes

- Delete All the Table Fastly
  
```sql
DROP DATABASE IF EXISTS [database_name];
CREATE DATABASE [database_name];
```

- Delete All the Table Otomatically
  
```sql
SET FOREIGN_KEY_CHECKS = 0;
SELECT CONCAT('DROP TABLE IF EXISTS `', TABLE_NAME, '`;')
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = 'DATABASE_NAME';
SET FOREIGN_KEY_CHECKS = 1;
```
