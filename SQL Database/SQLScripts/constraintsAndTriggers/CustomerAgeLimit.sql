CREATE TRIGGER before_insert_Customer
ON Customer
INSTEAD OF INSERT
AS
BEGIN
    DECLARE @CurrentDate DATE = GETDATE();
    
    IF (SELECT COUNT(*) FROM inserted WHERE DATEDIFF(MONTH, Cust_Birth, @CurrentDate) < 2) > 0
    BEGIN
        PRINT 'Customer age must be at least 2 months.';
    END
    ELSE
    BEGIN
        INSERT INTO Customer
        SELECT * FROM inserted;
    END
END;
