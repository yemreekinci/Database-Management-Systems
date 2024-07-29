ALTER TABLE Airport
ADD CONSTRAINT UQ_Airport_Coordinates
UNIQUE (Map_coordinates);