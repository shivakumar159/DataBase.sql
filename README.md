# Hotel Reservation System Database

## Project Overview

This project is a Hotel Reservation System developed using MySQL. The database is designed to manage hotel operations including customers, rooms, bookings, payments, and staff information.

The system demonstrates the use of relational database concepts such as primary keys, foreign keys, CRUD operations, joins, aggregate functions, grouping, sorting, and filtering.

---

## Database Name

GISMA_ECOMMERCE

---

## Features

* Customer Management
* Room Management
* Booking Management
* Payment Tracking
* Staff Management
* CRUD Operations (Create, Read, Update, Delete)
* Aggregate Functions (COUNT, SUM, AVG)
* Filtering using LIKE
* Sorting using ORDER BY
* Data Grouping using GROUP BY
* Inner Join, Left Join, and Right Join Queries

---

## Database Tables

### Customers

Stores customer information.

| Column       | Description           |
| ------------ | --------------------- |
| customer_id  | Unique customer ID    |
| first_name   | Customer first name   |
| last_name    | Customer last name    |
| email        | Customer email        |
| phone_number | Customer phone number |

### Rooms

Stores room information.

| Column          | Description    |
| --------------- | -------------- |
| room_id         | Unique room ID |
| room_number     | Room number    |
| room_type       | AC / Non-AC    |
| price_per_night | Room price     |
| room_floor      | Floor number   |

### Bookings

Stores reservation details.

| Column         | Description       |
| -------------- | ----------------- |
| booking_id     | Unique booking ID |
| customer_id    | Linked customer   |
| room_id        | Linked room       |
| check_in_date  | Check-in date     |
| check_out_date | Check-out date    |
| status         | Booking status    |

### Payments

Stores payment information.

| Column       | Description       |
| ------------ | ----------------- |
| payment_id   | Unique payment ID |
| booking_id   | Linked booking    |
| amount       | Payment amount    |
| payment_date | Date of payment   |
| payment_type | Payment method    |

### Staff

Stores hotel staff information.

| Column      | Description      |
| ----------- | ---------------- |
| staff_id    | Unique staff ID  |
| first_name  | Staff first name |
| last_name   | Staff last name  |
| sex         | Gender           |
| customer_id | Linked customer  |

---

## Entity Relationship Structure

Customers → Bookings

Rooms → Bookings

Bookings → Payments

Customers → Staff

The relationships are implemented using foreign keys to maintain data integrity.

---

## SQL Operations Implemented

### Create

```sql
CREATE DATABASE GISMA_ASSESSMENT;
CREATE TABLE customers (...);
```

### Insert

```sql
INSERT INTO customers (...);
INSERT INTO rooms (...);
```

### Update

```sql
UPDATE bookings
SET customer_id = 1
WHERE booking_id = 13;
```

### Delete

```sql
DELETE FROM bookings
WHERE booking_id BETWEEN 7 AND 12;
```

### Select

```sql
SELECT *
FROM customers;
```

---

## Advanced Queries

### Aggregate Functions

Count total payments:

```sql
SELECT COUNT(amount)
FROM payments;
```

Calculate total revenue:

```sql
SELECT SUM(amount)
FROM payments;
```

Calculate average payment:

```sql
SELECT AVG(amount)
FROM payments;
```

---

## Join Queries

### Inner Join

```sql
SELECT b.booking_id,
       c.first_name,
       c.last_name,
       b.check_in_date,
       b.check_out_date
FROM bookings b
INNER JOIN customers c
ON b.customer_id = c.customer_id;
```

### Left Join

```sql
SELECT c.customer_id,
       c.first_name,
       c.last_name,
       b.booking_id
FROM customers c
LEFT JOIN bookings b
ON c.customer_id = b.customer_id;
```

### Right Join

```sql
SELECT s.staff_id,
       s.first_name,
       s.last_name,
       p.payment_id,
       p.amount
FROM payments p
RIGHT JOIN bookings b
ON p.booking_id = b.booking_id
RIGHT JOIN staff s
ON b.customer_id = s.customer_id;
```

---

## Group By Queries

Bookings by status:

```sql
SELECT status,
       COUNT(*) AS total_bookings
FROM bookings
GROUP BY status;
```

Payments by payment type:

```sql
SELECT payment_type,
       COUNT(*) AS total_payments
FROM payments
GROUP BY payment_type;
```

---

## Tools Used

* MySQL
* DBeaver
* GitHub

---

## Project Files

* DataBase_Assessment.sql
* README.md
* ERD.png
* Assessment_Report.pdf

---

## Author

**Shiva Kumar Mudavath**

GISMA University of Applied Sciences

Module: B103A Database Systems
