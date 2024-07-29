CREATE TRIGGER before_insert_Luggage
ON Luggage
INSTEAD OF INSERT
AS
BEGIN
    IF (SELECT COUNT(*) FROM inserted WHERE Weight > 40) > 0
    BEGIN
        PRINT 'Luggage weight cannot exceed 40.';
    END
    ELSE
    BEGIN
        INSERT INTO Luggage
        SELECT * FROM inserted;
    END
END;