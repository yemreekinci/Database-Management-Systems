CREATE TRIGGER before_insert_Flight
ON Flight
INSTEAD OF INSERT
AS
BEGIN
    IF (SELECT COUNT(*) FROM inserted WHERE Departure_location = Destination) > 0
    BEGIN
        PRINT 'Departure and arrival airports cannot be the same.';
    END
    ELSE
    BEGIN
        INSERT INTO Flight
        SELECT * FROM inserted;
    END
END;
