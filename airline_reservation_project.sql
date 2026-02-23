CREATE DATABASE Airline_Reservation_System;
USE Airline_Reservation_System;

-- Airlines
CREATE TABLE Airlines(
  airline_id INT PRIMARY KEY,
  airline_name VARCHAR(50),
  country VARCHAR(40),
  rating DECIMAL(2,1),
  fleet_size INT,
  hub_airport VARCHAR(50)
);

INSERT INTO Airlines VALUES
(1,'Air India','India',4.2,120,'Delhi'),
(2,'IndiGo','India',4.5,150,'Delhi'),
(3,'Vistara','India',4.4,90,'Mumbai'),
(4,'SpiceJet','India',3.8,70,'Delhi'),
(5,'Go First','India',3.5,55,'Mumbai'),
(6,'AirAsia India','India',4.0,60,'Bangalore'),
(7,'Jet Airways','India',3.7,40,'Mumbai'),
(8,'Air Arabia','UAE',4.1,65,'Sharjah'),
(9,'Emirates','UAE',4.8,260,'Dubai'),
(10,'Qatar Airways','Qatar',4.9,230,'Doha'),
(11,'Singapore Airlines','Singapore',4.8,200,'Singapore'),
(12,'Etihad Airways','UAE',4.7,180,'Abu Dhabi'),
(13,'British Airways','UK',4.4,230,'London'),
(14,'Lufthansa','Germany',4.3,280,'Frankfurt'),
(15,'Virgin Atlantic','UK',4.2,150,'London'),
(16,'Turkish Airlines','Turkey',4.6,300,'Istanbul'),
(17,'Cathay Pacific','Hong Kong',4.7,160,'Hong Kong'),
(18,'Thai Airways','Thailand',4.1,170,'Bangkok'),
(19,'Malaysia Airlines','Malaysia',4.0,140,'Kuala Lumpur'),
(20,'American Airlines','USA',4.3,350,'Texas'),
(21,'Delta Airlines','USA',4.4,330,'Atlanta'),
(22,'United Airlines','USA',4.1,310,'Chicago'),
(23,'Air Canada','Canada',4.2,200,'Toronto'),
(24,'Qantas','Australia',4.5,180,'Sydney'),
(25,'Japan Airlines','Japan',4.6,190,'Tokyo'),
(26,'Korean Air','South Korea',4.4,185,'Seoul'),
(27,'Bangkok Airways','Thailand',4.0,70,'Bangkok'),
(28,'Scoot','Singapore',3.9,80,'Singapore'),
(29,'Oman Air','Oman',4.1,60,'Muscat'),
(30,'SriLankan Airlines','Sri Lanka',4.0,75,'Colombo');

-- Flights

CREATE TABLE Flights(
  flight_id INT PRIMARY KEY,
  airline_id INT,
  flight_no VARCHAR(10),
  origin VARCHAR(40),
  destination VARCHAR(40),
  distance_km INT,
  ticket_price DECIMAL(10,2),
  FOREIGN KEY (airline_id) REFERENCES Airlines(airline_id)
);

INSERT INTO Flights VALUES
(1,1,'AI101','Delhi','Mumbai',1148,6500),
(2,1,'AI205','Delhi','Goa',1510,7800),
(3,2,'IG450','Mumbai','Delhi',1148,5500),
(4,2,'IG890','Delhi','Chennai',1750,6200),
(5,3,'VS330','Mumbai','Dubai',1920,9800),
(6,3,'VS902','Delhi','Singapore',4150,14500),
(7,4,'SG120','Mumbai','Goa',435,3500),
(8,4,'SG450','Delhi','Kolkata',1530,6700),
(9,5,'GF230','Mumbai','Hyderabad',710,4800),
(10,6,'AA777','Bangalore','Delhi',2150,9000),
(11,7,'JT555','Delhi','Mumbai',1148,7200),
(12,8,'AB760','Sharjah','Delhi',2310,12000),
(13,9,'EM900','Dubai','Mumbai',1920,16000),
(14,9,'EM350','Dubai','Delhi',2190,17000),
(15,10,'QA777','Doha','Delhi',2550,16500),
(16,11,'SG100','Singapore','Delhi',4150,18000),
(17,12,'ET450','Abu Dhabi','Delhi',2300,15800),
(18,13,'BA525','London','Delhi',6700,30000),
(19,14,'LH320','Frankfurt','Delhi',6110,29500),
(20,15,'VA420','London','Mumbai',7200,31000),
(21,16,'TK555','Istanbul','Delhi',4550,24500),
(22,17,'CP220','Hong Kong','Mumbai',5020,26000),
(23,18,'TG190','Bangkok','Delhi',2920,15000),
(24,19,'MA330','Kuala Lumpur','Delhi',3660,15500),
(25,20,'AA330','Texas','Delhi',12800,48000),
(26,21,'DA410','Atlanta','Mumbai',13800,51000),
(27,22,'UA990','Chicago','Delhi',12500,47000),
(28,23,'AC700','Toronto','Delhi',11500,45000),
(29,24,'QA200','Sydney','Mumbai',10200,42000),
(30,25,'JA550','Tokyo','Delhi',5900,32000);


-- Passengers

CREATE TABLE Passengers(
  passenger_id INT PRIMARY KEY,
  full_name VARCHAR(60),
  age INT,
  gender VARCHAR(10),
  country VARCHAR(40),
  email VARCHAR(70)
);

INSERT INTO Passengers VALUES
(1,'Amit Sharma',29,'Male','India','amit@gmail.com'),
(2,'Priya Singh',25,'Female','India','priya@gmail.com'),
(3,'Rohit Verma',34,'Male','India','rohitv@gmail.com'),
(4,'Sneha Patil',28,'Female','India','sneha@gmail.com'),
(5,'Arjun Nair',31,'Male','India','arjun@gmail.com'),
(6,'Fatima Khan',26,'Female','Pakistan','fatima@gmail.com'),
(7,'David Lee',40,'Male','USA','dlee@gmail.com'),
(8,'Sara Wilson',38,'Female','USA','swilson@gmail.com'),
(9,'Michael Brown',45,'Male','UK','mike@gmail.com'),
(10,'Emma Davis',30,'Female','UK','emma@gmail.com'),
(11,'Hiro Tanaka',36,'Male','Japan','hiro@gmail.com'),
(12,'Sakura Ito',29,'Female','Japan','sakura@gmail.com'),
(13,'Chen Wei',33,'Male','China','chen@gmail.com'),
(14,'Mei Ling',27,'Female','China','mei@gmail.com'),
(15,'Oliver Smith',41,'Male','Australia','oliver@gmail.com'),
(16,'Emily Clark',24,'Female','Australia','emily@gmail.com'),
(17,'Jamal Ali',32,'Male','UAE','jamal@gmail.com'),
(18,'Aisha Noor',29,'Female','UAE','aisha@gmail.com'),
(19,'Carlos Perez',37,'Male','Spain','carlos@gmail.com'),
(20,'Maria Garcia',35,'Female','Spain','maria@gmail.com'),
(21,'Liam Johnson',33,'Male','Canada','liam@gmail.com'),
(22,'Sophia Miller',27,'Female','Canada','sophia@gmail.com'),
(23,'Daniel Martinez',42,'Male','Mexico','daniel@gmail.com'),
(24,'Isabella Lopez',30,'Female','Mexico','isabella@gmail.com'),
(25,'Kim Soo',28,'Male','South Korea','kimsoo@gmail.com'),
(26,'Park Ji',26,'Female','South Korea','parkji@gmail.com'),
(27,'Ahmed Hassan',39,'Male','Egypt','ahmed@gmail.com'),
(28,'Sara Mostafa',33,'Female','Egypt','saramos@gmail.com'),
(29,'John Walker',48,'Male','USA','johnw@gmail.com'),
(30,'Anita Desai',27,'Female','India','anita@gmail.com');

-- Reservations

CREATE TABLE Reservations(
  booking_id INT PRIMARY KEY,
  passenger_id INT,
  flight_id INT,
  seat_class VARCHAR(20),
  booking_date DATE,
  status VARCHAR(20),
  amount_paid DECIMAL(10,2),
  FOREIGN KEY (passenger_id) REFERENCES Passengers(passenger_id),
  FOREIGN KEY (flight_id) REFERENCES Flights(flight_id)
);

INSERT INTO Reservations VALUES
(1,1,1,'Economy','2024-01-10','Confirmed',6500),
(2,2,3,'Business','2024-01-15','Confirmed',15500),
(3,3,5,'Economy','2024-01-18','Cancelled',0),
(4,4,7,'Premium','2024-01-20','Confirmed',9800),
(5,5,10,'Economy','2024-01-22','Confirmed',9000),
(6,6,6,'Business','2024-01-25','Confirmed',14500),
(7,7,9,'Business','2024-02-05','Confirmed',4800),
(8,8,12,'Economy','2024-02-10','Confirmed',12000),
(9,9,14,'Premium','2024-02-12','Confirmed',17000),
(10,10,16,'Economy','2024-02-14','Confirmed',18000),
(11,11,18,'Business','2024-02-20','Confirmed',30000),
(12,12,17,'Economy','2024-02-22','Pending',15800),
(13,13,21,'Business','2024-02-25','Confirmed',24500),
(14,14,22,'Economy','2024-03-02','Confirmed',26000),
(15,15,25,'First Class','2024-03-05','Confirmed',48000),
(16,16,26,'Economy','2024-03-10','Confirmed',51000),
(17,17,27,'Premium','2024-03-12','Confirmed',47000),
(18,18,28,'Economy','2024-03-15','Pending',45000),
(19,19,29,'Business','2024-03-18','Confirmed',42000),
(20,20,30,'First Class','2024-03-20','Confirmed',32000),
(21,21,4,'Economy','2024-03-25','Confirmed',6200),
(22,22,8,'Business','2024-03-28','Confirmed',6700),
(23,23,11,'Economy','2024-04-02','Pending',7200),
(24,24,13,'Premium','2024-04-05','Confirmed',16000),
(25,25,15,'Economy','2024-04-10','Cancelled',0),
(26,26,19,'Business','2024-04-12','Confirmed',29500),
(27,27,20,'Economy','2024-04-15','Confirmed',31000),
(28,28,23,'Business','2024-04-18','Confirmed',15000),
(29,29,24,'Economy','2024-04-22','Confirmed',15500),
(30,30,2,'Business','2024-04-25','Confirmed',7800);

-- Basic Queries
-- 1. List all airlines with rating above 4.5
SELECT airline_name, rating 
FROM Airlines
WHERE rating > 4.5;

-- 2. Show all flights departing from Delhi
SELECT flight_no, origin, destination 
FROM Flights
WHERE origin = 'Delhi';

-- 3. Display passenger names and countries
SELECT full_name, country 
FROM Passengers;

-- 4. Show all confirmed reservation records
SELECT booking_id, passenger_id, status 
FROM Reservations
WHERE status = 'Confirmed';

-- 🔹B. Filtering & Sorting (5–7)
-- 5. Show flights with ticket price > 15000 sorted high → low
SELECT flight_no, ticket_price 
FROM Flights
WHERE ticket_price > 15000
ORDER BY ticket_price DESC;

-- 6. List passengers between age 25 and 35
SELECT full_name, age 
FROM Passengers
WHERE age BETWEEN 25 AND 35;

-- 7. Show top 5 highest fare bookings
SELECT booking_id, amount_paid
FROM Reservations
ORDER BY amount_paid DESC
LIMIT 5;

-- 🔹C. JOINS (8–11)
-- 8. Show flight, airline name, and ticket price
SELECT F.flight_no, A.airline_name, F.ticket_price
FROM Flights F
JOIN Airlines A ON F.airline_id = A.airline_id;

-- 9. Show passenger name with their booked flight
SELECT P.full_name, F.flight_no, R.seat_class, R.status
FROM Reservations R
JOIN Passengers P ON R.passenger_id = P.passenger_id
JOIN Flights F ON R.flight_id = F.flight_id;

-- 10. List bookings with airline name
SELECT R.booking_id, P.full_name, A.airline_name, R.amount_paid
FROM Reservations R
JOIN Passengers P ON R.passenger_id = P.passenger_id
JOIN Flights F ON R.flight_id = F.flight_id
JOIN Airlines A ON F.airline_id = A.airline_id;

-- 11. Fetch passengers who booked Business Class
SELECT P.full_name, R.seat_class 
FROM Reservations R
JOIN Passengers P ON R.passenger_id = P.passenger_id
WHERE seat_class = 'Business';

-- 🔹D. Aggregation (12–14)
-- 12. Count total bookings by booking status
SELECT status, COUNT(*) AS total_bookings
FROM Reservations
GROUP BY status;

-- 13. Total revenue collected from confirmed bookings
SELECT SUM(amount_paid) AS total_revenue
FROM Reservations
WHERE status = 'Confirmed';

-- 14. Count flights available per airline
SELECT airline_id, COUNT(*) AS total_flights
FROM Flights
GROUP BY airline_id;

-- E. Window Functions (15–16)
-- 15. Rank airlines by fleet size (largest to smallest)
SELECT airline_name, fleet_size,
RANK() OVER (ORDER BY fleet_size DESC) AS rank_by_fleet
FROM Airlines;

-- 16. Show top 5 highest priced tickets with rank
SELECT flight_no, ticket_price,
DENSE_RANK() OVER (ORDER BY ticket_price DESC) AS price_rank
FROM Flights;

-- F. Subqueries (17–20)
-- 17. Flights having ticket price above average
SELECT flight_no, ticket_price
FROM Flights
WHERE ticket_price > (SELECT AVG(ticket_price) FROM Flights);

-- 18. Passengers who paid more than average booking amount
SELECT full_name 
FROM Passengers
WHERE passenger_id IN (
    SELECT passenger_id FROM Reservations
    WHERE amount_paid > (SELECT AVG(amount_paid) FROM Reservations)
);

-- 19. Airlines that have more than 200 fleet size
SELECT airline_name
FROM Airlines
WHERE fleet_size > (SELECT AVG(fleet_size) FROM Airlines);

-- 20. Reservations for flights going to Delhi
SELECT booking_id, passenger_id, flight_id
FROM Reservations
WHERE flight_id IN (SELECT flight_id FROM Flights WHERE destination = 'Delhi');

describe airlines;

describe flights;

describe passengers;

describe reservations;

select * from airlines;

select * from flights;

select * from passengers;

select * from reservations;





