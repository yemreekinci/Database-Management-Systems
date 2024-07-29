SELECT 
    Airport.City, 
    COUNT(DISTINCT Flight.Flight_id) AS NumberOfFlights,
    AVG(YEAR(GETDATE()) - YEAR(Customer.Cust_birth)) AS AvgAge
FROM 
    Airport
JOIN 
    Flight ON Airport.Airport_id = Flight.Airport_id
JOIN 
    Ticket ON Flight.Flight_id = Ticket.Flight_id
JOIN 
    Passenger ON Ticket.Ticket_id = Passenger.Ticket_id
JOIN
    Customer ON Passenger.Passenger_id = Customer.Cust_id
GROUP BY 
    Airport.City;
