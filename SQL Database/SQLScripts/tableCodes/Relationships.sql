-- Örnek FOREIGN KEY kısıtlamasının güncellenmesi
ALTER TABLE Ticket ADD FOREIGN KEY (Flight_id) REFERENCES Flight(Flight_id);
