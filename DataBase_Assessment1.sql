

create DATABASE GISMA_ECOMMERCE

#Hotel Reservation System: Manage rooms, customers, bookings, and payments.

create table customers (
    customer_id int  auto_increment primary key,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    email varchar(50) unique,
    phone_number varchar(20));


create table rooms (
    room_id int auto_increment primary key,
    room_number varchar(10) not null,
    room_type varchar(50),
    price_per_night decimal(10,2) not null);


create table bookings (
    booking_id int auto_increment primary key,
    customer_id int,
    room_id int,
    check_in_date date not null,
    check_out_date date not null,
    status varchar(20),
    foreign key (customer_id) references customers(customer_id),
    foreign key (room_id) references rooms(room_id));


create table payments (
    payment_id int auto_increment primary key,
    booking_id int,
    amount decimal(10,2) not null,
    payment_date DATE not null,
    payment_type varchar(50),
     foreign key (booking_id) references bookings(booking_id));


create table staff (
    staff_id int auto_increment primary key,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    sex varchar(10),
    customer_id int,
    foreign key (customer_id) references customers(customer_id));


select *
from customers c 

    **INSERTING RECORDS IN TO CUSTOMERS TABLE**
    
insert into customers (first_name, last_name, email, phone_number)
values 
("Luca", "Muller", "Lucller123@gmail.com", "15567403322"),
("Jonas", "Weber", "Jonasweber@gmail.com", "1554987528"),
("Emma", "Schmidt", "Emmaschmidt@gmail.com", "1772540335"),
("Felix", "Fischer", "Felixfischer@gmail.com", "1987403258"),
("Noah", "Becker", "Noahbecker001@gmail.com", "1556364122"),
("Sophia", "Hoffmann", "Sophiahoff@gmail.com", "1724536984");

insert into customers (first_name, last_name, email, phone_number)
values 
("Rabba", "mesler", "Rubbames258@gmail.com", "1556725832"),
("kaily", "jenner", "kailyjenner@gmail.com", "15549875143"),
("usman", "smith", "usnamsmith@gmail.com", "1972540335"),
("illy", "london", "illylondon@gmail.com", "1367403258");

select *
from customers c 

select *
from rooms r 


**#ALTER TABLE (ADDING NEW ROW IN TABLE)**

alter table rooms
add room_floor int;


select *
from rooms r 

    **INSERTING RECORDS INTO ROOMS TABLE**
    
insert into  rooms  (room_number, room_type, price_per_night, room_floor)
values  
("101", "AC", "209.50", "1"),
("102", "NON-AC", "150.96", "1"),
("203", "NON-AC", "130.25", "2"),
("204", "AC", "190.00", "2"),
("403", "NON-AC", "110", "4"),
("402", "AC", "155.55", "4");

insert into  rooms  (room_number, room_type, price_per_night, room_floor)
values  
("501", "AC", "209.50", "5"),
("503", "NON-AC", "150.96", "5"),
("602", "NON-AC", "130.25", "6"),
("601", "AC", "190.00", "6");

select *
from rooms r 


select *
from bookings b 

    **INSERTING RECORDS INTO BOOKING TABLE**
    
insert into  bookings (customer_id, room_id, check_in_date, check_out_date, status)
values  
(1, 2, "2026-06-06", "2026-06-08", "BOOKED"),
(3, 5, "2026-06-10", "2026-06-15", "BOOKED"),
(2, 1, "2026-06-08", "2026-06-10", "BOOKED"),
(5, 3, "2026-06-11", "2026-06-20", "BOOKED"),
(6, 4, "2026-06-09", "2026-06-14", "BOOKED"),
(4, 6, "2026-06-07", "2026-06-08", "BOOKED");

insert into  bookings (customer_id, room_id, check_in_date, check_out_date, status)
values  
(7, 7, "2026-06-06", "2026-06-08", "BOOKED"),
(8, 8, "2026-06-10", "2026-06-15", "BOOKED"),
(9, 9, "2026-06-08", "2026-06-10", "BOOKED"),
(10, 10, "2026-06-08", "2026-06-12", "BOOKED");

select *
from bookings b 

#Deleting

delete from bookings
where booking_id between 7 and  12;


select *
from bookings b 

    **INSERTING RECORDS INTO BOOINGS TABLE**
    
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

** UPDATING RECORDS INTO BOOKING TABLE**
    
update bookings set customer_id = 1, room_id = 1 where booking_id = 13;
update bookings set customer_id = 5, room_id = 2 where booking_id = 14;
update bookings set customer_id = 3, room_id = 3 where booking_id = 15;
update bookings set customer_id = 6, room_id = 4 where booking_id = 16;
update bookings set customer_id = 4, room_id = 5 where booking_id = 17;
update bookings set customer_id = 2, room_id = 6 where booking_id = 18;

select *
from bookings b 

insert into bookings (customer_id, room_id, check_in_date, check_out_date, status)
values 
(null, null, '2026-06-10', '2026-06-12', 'BOOKED');


select *
from rooms 

select *
from payments p 

    **INSERTING RECORDS INTO PAYMENTS TABLE**
    
insert into payments (booking_id, amount, payment_date, payment_type)
values 
(13, 419.00, "2026-06-08", "Master-card"),
(14, 754.80, "2026-06-15", "Visa-Card"),
(15, 260.50, "2026-06-10", "Cash"),
(16, 1710.00, "2026-06-20", "Visa-Card"),
(17, 550.00, "2026-06-14", "Cash"),
(18, 155.55, "2026-06-08", "Master-Card");

insert into payments (booking_id, amount, payment_date, payment_type)
values 
(19, 419.00, "2026-06-08", "Master-card"),
(20, 754.80, "2026-06-15", "Visa-Card"),
(21, 260.50, "2026-06-10", "Cash"),
(22, 350.00, "2026-06-20", "Visa-Card");

select *
from payments p 

select *
from staff s 

    **INSERTING RECORDS INTO STAFF TABLE**
    
insert into staff  (first_name, last_name, sex, customer_id)
values 
("Nuno", "Robisco", "M", 1),
("Tiago", "Takla", "M", 2),
("Daniyala", "Chanusa", "F", 3),
("Bogdhan", "Illes", "M", 4),
("April", "Chanus", "F", 5),
("Lusiya", "Gorbaty", "F", 6);

insert into staff  (first_name, last_name, sex, customer_id)
values 
("Cesar", "bisco", "M", 7),
("sager", "takur", "M", 8),
("piot", "puliq", "M", 3),
("klara", "lukee", "F", 4);


update staff s  set customer_id = 9 where s.staff_id = 9;
update staff s  set customer_id = 10 where s.staff_id = 10;

select * 
from staff s 


**#LIMIT**

select *
from rooms
limit 4;

select *
from rooms r 


**#DISTINCT**

select distinct STAFF_ID
from staff s 



**#ORDER BY (DESC & ASC)**

select *
from payments p
order by amount desc 

select *
from rooms r 
order by price_per_night asc 


**#count**

select count(amount)
from payments p 


**#SUM**

select SUM(amount)
from payments p 


select SUM(price_per_night)
from rooms r  
where room_type = "non-ac";


**#AVERAGE (AVG)**

select AVG(AMOUNT)
from payments p 
where p.payment_type = "visa-card";


**#LIKE (%, -)**

select *
from staff s 
where s.first_name like "%ala";

select *
from customers c 
where c.last_name like "%n%";


**#Group By**

select status, COUNT(*) as total_bookings
from bookings
group by status;


select room_id, COUNT(*) as times_booked
from bookings
group by room_id;

select payment_type, COUNT(*) as total_payments
from payments
group by payment_type;



**#join and Group By**

select r.room_type, SUM(p.amount) as total_revenue
from payments p
join bookings b on p.booking_id = b.booking_id
join rooms r as b.room_id = r.room_id
group by r.room_type;


**#inner join**

select b.booking_id, c.first_name, c.last_name, b.check_in_date, b.check_out_date
FROM bookings b
inner join customers c on b.customer_id = c.customer_id;

select b.booking_id, c.first_name, c.last_name, b.check_in_date, b.check_out_date
from bookings b
inner join customers c on b.customer_id = c.customer_id;



**#left join**
select c.customer_id, c.first_name, c.last_name, b.booking_id
from customers c
left join bookings b on c.customer_id = b.customer_id;
  
**# Right Join**
select s.staff_id, s.first_name,s.last_name, p.payment_id, p.amount
from payments p
right join bookings b on p.booking_id = b.booking_id
right join staff s on b.customer_id = s.customer_id;


select *
from staff s 

**#ERD Assignment payments with customer names**

select  p.payment_id, c.first_name, c.last_name, p.amount, p.payment_date,p.payment_type
from payments p
join bookings b on p.booking_id = b.booking_id
join customers c on b.customer_id = c.customer_id;










