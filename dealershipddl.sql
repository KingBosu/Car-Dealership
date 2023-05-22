
INSERT INTO car (make, model, year) VALUES
('Toyota', 'Corolla', 2020),
('Honda', 'Civic', 2019),
('Ford', 'Mustang', 2021);


INSERT INTO mechanics (first_name, last_name) VALUES
('John', 'Smith'),
('Sarah', 'Johnson'),
('Michael', 'Davis');


INSERT INTO sales_team (first_name, last_name) VALUES
('Emily', 'Brown'),
('Daniel', 'Wilson'),
('Sophia', 'Thompson');


INSERT INTO customer (first_name, last_name) VALUES
('David', 'Lee'),
('Emma', 'Taylor'),
('Oliver', 'Clark');


INSERT INTO invoice (amount, car_id, customer_id, saleperson_id) VALUES
(20000, 1, 1, 1),
(15000, 2, 2, 2),
(25000, 3, 3, 3);


INSERT INTO service_ticket (service_type, amount, car_id, customer_id, mechanic_id) VALUES
('Oil Change', 50, 1, 1, 1),
('Tire Rotation', 30, 2, 2, 2),
('Brake Inspection', 80, 3, 3, 3);


INSERT INTO dealership (saleperson_id, mechanic_id) VALUES
(1, 1),
(2, 2),
(3, 3);
