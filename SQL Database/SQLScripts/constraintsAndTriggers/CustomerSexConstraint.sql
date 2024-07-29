ALTER TABLE Customer
ADD CONSTRAINT CK_Customer_Gender
CHECK (Cust_sex IN ('F', 'M'));