create DATABASE GISMA_ECOMMERCE



CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(50) UNIQUE,
    phone_number VARCHAR(20));

CREATE TABLE rooms (
    room_id INT AUTO_INCREMENT PRIMARY KEY,
    room_number VARCHAR(10) NOT NULL,
    room_type VARCHAR(50),
    price_per_night DECIMAL(10,2) NOT NULL);

CREATE TABLE bookings (
    booking_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    room_id INT,
    check_in_date DATE NOT NULL,
    check_out_date DATE NOT NULL,
    status VARCHAR(20),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (room_id) REFERENCES rooms(room_id));

CREATE TABLE payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    booking_id INT,
    amount DECIMAL(10,2) NOT NULL,
    payment_date DATE NOT NULL,
    payment_type VARCHAR(50),
    FOREIGN KEY (booking_id) REFERENCES bookings(booking_id));

CREATE TABLE staff (
    staff_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    sex VARCHAR(10),
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id));


select *
from customers c 

INSERT INTO customers (first_name, last_name, email, phone_number)
VALUES 
("Luca", "Muller", "Lucamuller123@gmail.com", "15567403322"),
("Jonas", "Weber", "Jonasweber@gmail.com", "1554987528"),
("Emma", "Schmidt", "Emmaschmidt@gmail.com", "1772540335"),
("Felix", "Fischer", "Felixfischer@gmail.com", "1987403258"),
("Noah", "Becker", "Noahbecker001@gmail.com", "1556364122"),
("Sophia", "Hoffmann", "Sophiahoff@gmail.com", "1724536984");

select *
from customers c 

select *
from rooms r 

ALTER TABLE rooms
ADD room_floor INT;

select *
from rooms r 

insert into  rooms  (room_number, room_type, price_per_night, room_floor)
values  
("101", "AC", "209.50", "1"),
("102", "NON-AC", "150.96", "1"),
("203", "NON-AC", "130.25", "2"),
("204", "AC", "190.00", "2"),
("403", "NON-AC", "110", "4"),
("402", "AC", "155.55", "4");

select *
from rooms r 


select *
from bookings b 

insert into  bookings (customer_id, room_id, check_in_date, check_out_date, status)
values  
(1, 2, "2026-06-06", "2026-06-08", "BOOKED"),
(3, 5, "2026-06-10", "2026-06-15", "BOOKED"),
(2, 1, "2026-06-08", "2026-06-10", "BOOKED"),
(5, 3, "2026-06-11", "2026-06-20", "BOOKED"),
(6, 4, "2026-06-09", "2026-06-14", "BOOKED"),
(4, 6, "2026-06-07", "2026-06-08", "BOOKED");

select *
from bookings b 

#Deleting

delete from bookings
where booking_id between 7 and  12;


select *
from bookings b 

insert into bookings (customer_id, room_id, check_in_date, check_out_date, status)
values 
(1, 2, "2026-06-06", "2026-06-08", "BOOKED"),
(3, 5, "2026-06-10", "2026-06-15", "BOOKED"),
(2, 1, "2026-06-08", "2026-06-10", "BOOKED"),
(5, 3, "2026-06-11", "2026-06-20", "BOOKED"),
(6, 4, "2026-06-09", "2026-06-14", "BOOKED"),
(4, 6, "2026-06-07", "2026-06-08", "BOOKED");

select *
from bookings b 

select *
from payments p 


select *
from bookings b 


UPDATE bookings SET customer_id = 1, room_id = 1 WHERE booking_id = 13;
UPDATE bookings SET customer_id = 5, room_id = 2 WHERE booking_id = 14;
UPDATE bookings SET customer_id = 3, room_id = 3 WHERE booking_id = 15;
UPDATE bookings SET customer_id = 6, room_id = 4 WHERE booking_id = 16;
UPDATE bookings SET customer_id = 4, room_id = 5 WHERE booking_id = 17;
UPDATE bookings SET customer_id = 2, room_id = 6 WHERE booking_id = 18;

select *
from bookings b 

INSERT INTO bookings (customer_id, room_id, check_in_date, check_out_date, status)
VALUES 
(NULL, NULL, '2026-06-10', '2026-06-12', 'BOOKED');


select *
from rooms 

select *
from payments p 

INSERT INTO payments (booking_id, amount, payment_date, payment_type)
VALUES 
(13, 419.00, "2026-06-08", "Master-card"),
(14, 754.80, "2026-06-15", "Visa-Card"),
(15, 260.50, "2026-06-10", "Cash"),
(16, 1710.00, "2026-06-20", "Visa-Card"),
(17, 550.00, "2026-06-14", "Cash"),
(18, 155.55, "2026-06-08", "Master-Card");

select *
from payments p 

select *
from staff s 

INSERT INTO staff  (first_name, last_name, sex, customer_id)
VALUES 
("Nuno", "Robisco", "M", 1),
("Tiago", "Takla", "M", 2),
("Daniyala", "Chanusa", "F", 3),
("Bogdhan", "Illes", "M", 4),
("April", "Chanus", "F", 5),
("Lusiya", "Gorbaty", "F", 6);

select * 
from staff s 


#Group By
SELECT status, COUNT(*) AS total_bookings
FROM bookings
GROUP BY status;


SELECT room_id, COUNT(*) AS times_booked
FROM bookings
GROUP BY room_id;

SELECT payment_type, COUNT(*) AS total_payments
FROM payments
GROUP BY payment_type;

# join and Group By
SELECT r.room_type, SUM(p.amount) AS total_revenue
FROM payments p
JOIN bookings b ON p.booking_id = b.booking_id
JOIN rooms r ON b.room_id = r.room_id
GROUP BY r.room_type;


#inner join
SELECT b.booking_id, c.first_name, c.last_name, b.check_in_date, b.check_out_date
FROM bookings b
INNER JOIN customers c ON b.customer_id = c.customer_id;

SELECT b.booking_id, c.first_name, c.last_name, b.check_in_date, b.check_out_date
FROM bookings b
INNER JOIN customers c ON b.customer_id = c.customer_id;



#left join
SELECT c.customer_id, c.first_name, c.last_name, b.booking_id
FROM customers c
LEFT JOIN bookings b ON c.customer_id = b.customer_id;
  

#ERD Assignment payments with customer names

SELECT  p.payment_id, c.first_name, c.last_name, p.amount, p.payment_date,p.payment_type
FROM payments p
JOIN bookings b ON p.booking_id = b.booking_id
JOIN customers c ON b.customer_id = c.customer_id;


select *
from  staff s 




