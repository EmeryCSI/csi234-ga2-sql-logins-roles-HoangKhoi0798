-- Create roles
-- Roles are used to group users and assign permissions collectively
CREATE ROLE HRRole;
CREATE ROLE SalesRole;
CREATE ROLE ITRole;
GO

-- Assign permissions to roles
-- GRANT: Gives a security principal permission to perform an action
-- SCHEMA::GA1 applies the permission to all objects within the GA1 schema

-- SELECT: Allows reading data
-- INSERT: Allows adding new rows
-- UPDATE: Allows modifying existing data
-- DELETE: Allows removing rows
GRANT SELECT, INSERT, UPDATE, DELETE ON SCHEMA::GA1 TO HRRole;

-- SalesRole only needs to view employee data, not modify it
GRANT SELECT ON GA1.EmployeeData TO SalesRole;

-- ITRole needs to view data and update certain information
GRANT SELECT, UPDATE ON GA1.EmployeeData TO ITRole;
GO

-- Assign users to roles
-- This links the users to their respective roles, granting them the role's permissions
ALTER ROLE HRRole ADD MEMBER HRManagerUser;
ALTER ROLE SalesRole ADD MEMBER SalesRepUser;
ALTER ROLE ITRole ADD MEMBER ITSupportUser;
GO