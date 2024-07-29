SELECT 
    Office.Office_id,
    Office.Office_location,
    Employee.Emp_department,
    AVG(Employee.Emp_salary) AS Average_Salary
FROM Employee
JOIN Office ON Employee.Office_id = Office.Office_id
GROUP BY Office.Office_id, Office.Office_location, Employee.Emp_department;