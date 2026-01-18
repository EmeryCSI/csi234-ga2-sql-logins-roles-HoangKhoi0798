-- EXECUTE AS: This command allows us to switch context to a different user
-- This simulates logging in as the HR Manager
EXECUTE AS USER = 'HRManagerUser';

-- HR should have full access to the employee data
SELECT * FROM GA1.EmployeeData;

-- HR should be able to insert new employee records
INSERT INTO GA1.EmployeeData (EmployeeID, FirstName, LastName, Salary, Department)
VALUES (5, 'Eva', 'Brown', 70000.00, 'Marketing');

-- Check to see the new user is added
SELECT * FROM GA1.EmployeeData;

-- REVERT: This command switches back to our original user context
REVERT;
GO