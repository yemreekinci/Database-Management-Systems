ALTER TABLE Employee
ADD CONSTRAINT CK_Employee_Gender
CHECK (Emp_sex IN ('F', 'M'));