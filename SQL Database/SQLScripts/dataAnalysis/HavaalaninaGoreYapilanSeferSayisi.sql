SELECT Airport.City, COUNT(Flight.Flight_id) AS NumberOfFlights
FROM Airport
JOIN Flight ON Airport.Airport_id = Flight.Airport_id
GROUP BY Airport.City;
