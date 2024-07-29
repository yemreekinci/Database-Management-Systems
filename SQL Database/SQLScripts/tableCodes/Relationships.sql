-- Örnek FOREIGN KEY kýsýtlamasýnýn güncellenmesi
ALTER TABLE Ticket ADD FOREIGN KEY (Flight_id) REFERENCES Flight(Flight_id);
