-- Switch to the IT Support user context
EXECUTE AS USER = 'ITSupportUser';

-- IT should be able to view all employee data
SELECT * FROM GA1.EmployeeData;

-- This update should succeed (updating department)
UPDATE GA1.EmployeeData SET Department = 'IT Support' WHERE EmployeeID = 3;

-- This update should fail (attempting to update salary)
UPDATE GA1.EmployeeData SET Salary = 58000.00 WHERE EmployeeID = 3;
-- After update view
SELECT * FROM GA1.EmployeeData;

REVERT;
GO