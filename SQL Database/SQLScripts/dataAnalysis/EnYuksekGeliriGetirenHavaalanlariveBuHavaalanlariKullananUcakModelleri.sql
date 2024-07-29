SELECT 
    Airport.Airport_id,
    Airport.City,
    SUM(Ticket.Price) AS Total_Revenue,
    Aircraft.Aircraft_model
FROM Flight
JOIN Airport ON Flight.Airport_id = Airport.Airport_id
JOIN Ticket ON Flight.Flight_id = Ticket.Flight_id
JOIN Aircraft ON Flight.Aircraft_id = Aircraft.Aircraft_id
GROUP BY Airport.Airport_id, Airport.City, Aircraft.Aircraft_model
ORDER BY Total_Revenue DESC;
