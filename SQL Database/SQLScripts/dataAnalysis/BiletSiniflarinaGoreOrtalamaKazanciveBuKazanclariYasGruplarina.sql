SELECT
    Ticket.Class,
    CASE
        WHEN DATEDIFF(YEAR, Customer.Cust_birth, GETDATE()) < 12 THEN '�ocuk'
        WHEN DATEDIFF(YEAR, Customer.Cust_birth, GETDATE()) < 18 THEN 'Gen�'
        WHEN DATEDIFF(YEAR, Customer.Cust_birth, GETDATE()) < 60 THEN 'Yeti�kin'
        ELSE 'Ya�l�'
    END AS Age_Group,
    AVG(Ticket.Price) AS Average_Revenue
FROM
    Ticket
JOIN Passenger ON Ticket.Ticket_id = Passenger.Ticket_id
JOIN Customer ON Passenger.Passenger_id = Customer.Cust_id
GROUP BY
    Ticket.Class,
    CASE
        WHEN DATEDIFF(YEAR, Customer.Cust_birth, GETDATE()) < 12 THEN '�ocuk'
        WHEN DATEDIFF(YEAR, Customer.Cust_birth, GETDATE()) < 18 THEN 'Gen�'
        WHEN DATEDIFF(YEAR, Customer.Cust_birth, GETDATE()) < 60 THEN 'Yeti�kin'
        ELSE 'Ya�l�'
    END;
