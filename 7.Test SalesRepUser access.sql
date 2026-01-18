-- Switch to the Sales Representative user context
EXECUTE AS USER = 'SalesRepUser';

-- Sales should be able to view employee data, but not salary information
SELECT * FROM GA1.EmployeeData;

-- This insert should fail because SalesRole only has SELECT permission
INSERT INTO GA1.EmployeeData (EmployeeID, FirstName, LastName, Salary, Department)
VALUES (6, 'Mike', 'Davis', 52000.00, 'Sales');

REVERT;
GO