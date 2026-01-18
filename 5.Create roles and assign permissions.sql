-- Column-level permissions allow for more granular control over data access

-- DENY: Explicitly prevents a security principal from performing an action
-- This ensures that SalesRole cannot view salary information
DENY SELECT ON GA1.EmployeeData(Salary) TO SalesRole;

-- Grant UPDATE permission on specific columns for ITRole
-- This allows IT to update employee information except for salary
GRANT UPDATE ON GA1.EmployeeData(FirstName, LastName, Department) TO ITRole;
DENY UPDATE ON GA1.EmployeeData(Salary) TO ITRole;
GO