#MY PROJECT

This is my **Database Assignment** and the topic is **Hotel Reservation Management System**


**Introduction:**

For this project, I built a Hotel Reservation Management System in MySQL, with phpMyAdmin as the interface. The goal was to put together a database that could actually handle the moving parts of a hotel — guest registrations, room info, bookings, payments, staff records, and all the other kind of thing.

Hotels deal with a lot of data everyday of the year. When you try to manage all of it manually, things gets problems like, Duplicate entries, missing records, inconsistencies between what's on paper and what's actually happening. A structured database fixes most of that.

The implementation was pretty standard SQL throughout. Tables were created with CREATE TABLE statements, data got loaded and updated with INSERT and UPDATE, DELETE handled anything that needed to come out, and SELECT queries pulled it all back when needed.

**Database Design:**

Before writing a single line of SQL, the structure got mapped out in an Entity Relationship Diagram. Five tables: Customers, Rooms, Bookings, Payments, and Staff. Getting that diagram right first saved a lot of backtracking later.

Each table handles a specific detals of the hotel's data. Customers holds guest names and contact details. Rooms handles the physical inventory side of things — room number, type, floor, nightly rate. Bookings is where those two come together, tying a specific guest to a specific room for a specific stay. Payments hooks into Bookings and records what was actually charged. Staff sits off on its own, keeping employee records separate from the guest-facing stuff.

Every table has a primary key, which is what keeps individual records uniquely identifiable. Foreign keys handle the connections between tables. So when you pull a booking record, the system already knows which customer and which room it belongs to — no need to store that information twice.

**Implementation:**

Once the database structure was in place and there will be  next step was actually pulling data out of it. Basic SELECT statements handled most of that querying individual tables, then can add adding WHERE condition to filter the data. Rooms on a specific floor, for instance, or bookings within a date range.

INSERT statements use for adding detalis in table like in customer details, room records, bookings, payments, staff. All the standard tables you expect in a hotel management system.

JOINS statement helps us to when we needed to read across multiple tables at once. A query that returns a customer's name alongside their booking dates and the room they reserved, all in one result set, rather than having to cross-reference three separate outputs manually.

Aggregate functions added some analytical value on top of that. COUNT to see how many bookings each customer had made, SUM to get total revenue figures. Reportedly these are the kinds of numbers a real operation would want surfaced quickly without running a manual tally.

Updating condition we use for update the records. If a customer changes their reservation, the booking entry needs to reflect that — so UPDATE statements covered those cases. DELETE statements handled removal when records were no longer needed. Nothing complicated, but it covers the full data lifecycle: insert, read, update, remove.

**Results:**

So the database hepls to keep the database in correct and proper way. Hotel records — customers, rooms, bookings, payments, staff — can all be stored, pulled up, updated, or removed without any othere problems to othere data falling apart. Queries run cleanly across multiple tables, which means we can pull the customers booking details alongside the customer name and room details in one go rather than chasing down separate records manually.

Data integrity remaind strong throughout testing, and thefinal design avoided any meaningful duplication. The system maintains consistent, any modification made in any part of table it updates it all over the data appears.

Report generation works smoothly, and the queries written cleraly, useful output rather than raw table dumps.

Including screenshots of the database structure and query outputs makes the implementation clearer and more concrete.

--Screenshots:--

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
     foreign key (booking_id) references bookings(booking_id)
);

create table staff (
    staff_id int auto_increment primary key,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    sex varchar(10),
    customer_id int,
    foreign key (customer_id) references customers(customer_id));


**Challenges and Solutions:**

Working through this project, the SQL side came together slower than expected. Foreign keys were the real sticking point — getting the table relationships to actually behave took a few tries, and at one point I had to scrap a join and rebuild it from scratch. But that's probably where most of the learning happened. Another challenge involved maintaining data consistency while allowing flexibility in certain fields.

I solved these problems by adding the right conditions and validation rules. Working on this project improved my understanding of normalization, data integrity, SQL queries, and manging relationships in between the tables. I also realized how useful ER diagrams are for planning and visualizing the structure before building it.

**Conclusion and Future Work:**

So this Hotel Reservation Management System is basically a working example of relational database concepts applied to something you'd actually encounter. It handles the stuff a hotel genuinely needs to track — customers, rooms, reservations, payments, and whoever's working the desk.

Overall, this project really improved my understanding of database design and SQL betterway,and it showed how relationaldatabase can make business operations more efficent. In the future, additional features such as room availability, staff scheduling, online reservations, and management reporting could be included in the further to improve how the system work.




