#MY PROJECT
This is my **Database Assignment** and the topic is **Hotel Reservation Management System**

**Introduction:**

For this database project, I developed a Hotel Reservation Management System using MySQL and phpMyAdmin. The purpose of the project is to create a database that can manage hotel operations such as customer registrations, room details, bookings, payments, and staff records.
Hotels handle large amounts of information every day. Maintaining all this information manually can lead to errors and duplication. Therefore, this database was designed to store and organise hotel data in a structured way.
The project was implemented using SQL commands for creating tables, inserting data, updating records, deleting information, and retrieving data through queries.


Database Design:

The system was designed using an Entity Relationship Diagram (ERD) to represent the structure of the database, and it has five main tables which are Customers, Rooms, Bookings, Payments, and Staff.
Each entity contains specific attributes that describe the information stored within it. The Customers table stores information about guests, including their names and contact details. The Rooms table has the information about hotel rooms such as room number, room type, floor, and nightly price. The Bookings table records reservation details and connects customers with rooms. The Payments table stores payment information about the bookings, and  the last one is Staff table keeps records of hotel employees information.
To ensure data integrity, each table contains a primary key that uniquely identifies records. Foreign keys were used to show the relationships between tables and there data connection between tables.

Implementation:

After creating the database structure, simple SELECT statements were used to have information from each table. Filtering conditions were applied to display specific records, such as rooms located on a particular floor. SQL INSERT statements were used to add customer details, room information, bookings, payment transactions, and staff records.
JOIN queries is also implemented to combine data from multiple tables. These queries allowed customer information, booking details, and room information to be displayed together in a single result.
Aggregate functions were also used to generate useful business information. For example, the total number of bookings made by each customer was calculated using COUNT(), while total revenue was calculated using SUM().
The database also supports updating existing information. For example, booking details can be edit and update if a customer changes their reservation. SQL UPDATE statements were used for  this functionality.
Deletion operations were performed using SQL DELETE statements to remove records when it is  necessary. This helped how data can be managed throughout its lifecycle.

Results:

The completed database successfully meets the objectives of the project by providing an organized system for managing hotel information. The system allows users to store, update, retrieve, and delete records related to customers, rooms, bookings, payments, and staff. Functional queries were executed to display information, combine data from multiple tables, and generate useful reports. 
The results demonstrated that the database could efficiently manage hotel operations while maintaining data integrity and reducing redundancy. Screenshots of the database structure and query outputs can be included to demonstrate the successful implementation of the system.
Screenshots:
create table customers (
    customer_id int  auto_increment primary key,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    email varchar(50) unique,
    phone_number varchar(20)
);

create table rooms (
    room_id int auto_increment primary key,
    room_number varchar(10) not null,
    room_type varchar(50),
    price_per_night decimal(10,2) not null
);

create table bookings (
    booking_id int auto_increment primary key,
    customer_id int,
    room_id int,
    check_in_date date not null,
    check_out_date date not null,
    status varchar(20),
    foreign key (customer_id) references customers(customer_id),
    foreign key (room_id) references rooms(room_id)
);

create table payments (
    payment_id int auto_increment primary key,
    booking_id int,
    amount decimal(10,2) not null,
    payment_date DATE not null,
    payment_type varchar(50),
     foreign key (booking_id) references bookings(booking_id)
);

create table staff (
    staff_id int auto_increment primary key,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    sex varchar(10),
    customer_id int,
    foreign key (customer_id) references customers(customer_id)
);


Challenges and Solutions:
During the development of this project, I gained practical experience in designing relational databases and implementing SQL queries. One challenge was ensuring that relationships between tables were correctly established using foreign keys. Another challenge involved maintaining data consistency while allowing flexibility in certain fields.
Appropriate constraints and validation rules were implemented to overcome this problem. Through this project, I developed a better understanding of database normalization, data integrity, SQL query writing, and relationship management. I also learned how ERDs can be used to visualize and plan database structures before implementation.


Conclusion and Future Work:
The Hotel Reservation Management System successfully shows the use of relational database concepts in a real-world scenario. The database provides an organised method for managing customers, rooms, reservations, payments, and staff information.
Overall, this project improved my understanding of database design and SQL while showing how relational databases can support business operations efficiently. In the future, additional features such as room availability, staff scheduling, online reservations, and management reporting could be incorporated to further enhance the system.



***

