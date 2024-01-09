-- Save this script as 0-privileges.sql
SELECT CONCAT('Grants for ', user, '@', host) AS UserGrants
FROM mysql.user
WHERE user IN ('user_0d_1', 'user_0d_2')
  AND host = 'localhost';

