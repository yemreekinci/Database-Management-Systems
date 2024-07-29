CREATE TRIGGER before_insert_Employee
ON Employee
INSTEAD OF INSERT
AS
BEGIN
    DECLARE @CurrentDate DATE = GETDATE();
    
    IF (SELECT COUNT(*) FROM inserted WHERE DATEDIFF(YEAR, Emp_birth, @CurrentDate) < 18) > 0
    BEGIN
        PRINT 'Employee must be at least 18 years old.';
    END
    ELSE
    BEGIN
        INSERT INTO Employee
        SELECT * FROM inserted;
    END
END;
