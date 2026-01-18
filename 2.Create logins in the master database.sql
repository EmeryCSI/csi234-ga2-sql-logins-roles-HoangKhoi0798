-- Create logins. Logins are created on the SERVER level in the master database
-- Be sure you run this code ON MASTER
-- A login is a security principal at the server level that allows connection to the SQL Server instance
CREATE LOGIN HRManager WITH PASSWORD = 'HRPass123!';
CREATE LOGIN SalesRep WITH PASSWORD = 'SalesPass123!';
CREATE LOGIN ITSupport WITH PASSWORD = 'ITPass123!';
GO

-- Verify that the logins were created
SELECT *
FROM sys.sql_logins