-- Create users for the logins
-- A user is a security principal at the database level
-- Switch back to AdventureWorksLT before running this Query
-- Users are mapped to logins and are used to control access to database objects
CREATE USER HRManagerUser FOR LOGIN HRManager;
CREATE USER SalesRepUser FOR LOGIN SalesRep;
CREATE USER ITSupportUser FOR LOGIN ITSupport;
GO

-- Verify that the users were created
SELECT *
FROM sys.database_principals

-- The difference between a login and a user:
-- Login: Server-level principal, used for authentication (connecting to the server)
-- User: Database-level principal, used for authorization (accessing objects within a database)