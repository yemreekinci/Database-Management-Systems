ALTER TABLE Flight
ADD CONSTRAINT CK_Flight_Time
CHECK (Departure_time < Arrival_time);
