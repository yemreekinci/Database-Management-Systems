-- �rnek FOREIGN KEY k�s�tlamas�n�n g�ncellenmesi
ALTER TABLE Ticket ADD FOREIGN KEY (Flight_id) REFERENCES Flight(Flight_id);
