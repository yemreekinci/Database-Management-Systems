SELECT Flight.Flight_id, Flight.Departure_location, Flight.Destination, Flight.Departure_time, Flight.Arrival_time
FROM Flight
WHERE Departure_time >= '2023-01-01' AND Departure_time <= '2024-01-01';
