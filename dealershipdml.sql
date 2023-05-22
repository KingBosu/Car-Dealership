CREATE TABLE car(
    car_id SERIAL PRIMARY KEY,
    make VARCHAR,
    model VARCHAR,
    year INTEGER
);

CREATE TABLE mechanics(
    mechanic_id SERIAL PRIMARY KEY,
    first_name VARCHAR,
    last_name VARCHAR
);

CREATE TABLE sales_team(
    saleperson_id SERIAL PRIMARY KEY,
    first_name VARCHAR,
    last_name VARCHAR
);

CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR,
    last_name VARCHAR
);

CREATE TABLE invoice(
    invoice_id SERIAL PRIMARY KEY,
    amount INTEGER,
    car_id INTEGER,
    customer_id INTEGER,
    saleperson_id INTEGER
);

CREATE TABLE service_ticket(
    service_ticket_id SERIAL PRIMARY KEY,
    service_type VARCHAR,
    amount INTEGER,
    car_id INTEGER,
    customer_id INTEGER,
    mechanic_id INTEGER
);

CREATE TABLE dealership(
    dealership_id SERIAL PRIMARY KEY,
    saleperson_id INTEGER,
    mechanic_id INTEGER
);

ALTER TABLE dealership
ADD FOREIGN KEY (saleperson_id) REFERENCES sales_team (saleperson_id),
ADD FOREIGN KEY (mechanic_id) REFERENCES mechanics (mechanic_id);

ALTER TABLE invoice
ADD FOREIGN KEY (car_id) REFERENCES car(car_id),
ADD FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
ADD FOREIGN KEY (saleperson_id) REFERENCES sales_team(saleperson_id);

ALTER TABLE service_ticket
ADD FOREIGN KEY (car_id) REFERENCES car,
ADD FOREIGN KEY (mechanic_id) REFERENCES mechanics,
ADD FOREIGN KEY (customer_id) REFERENCES customer;

ALTER TABLE customer
ADD COLUMN service_ticket_id INTEGER,
ADD CONSTRAINT fk_service_ticket
FOREIGN KEY (service_ticket_id) REFERENCES service_ticket(service_ticket_id);
