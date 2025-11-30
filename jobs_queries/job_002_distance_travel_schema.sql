-- drop tables if they exist
DROP TABLE IF EXISTS rides;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS zdc_user_travel_distance;

-- create users table
CREATE TABLE users (
    id INT,
    name VARCHAR(55)
);
-- insert data into users table
INSERT INTO users (id, name) VALUES
(1, 'James Cain'),
(2, 'Thomas Miller'),
(3, 'Courtney Stevenson'),
(4, 'Tammy James'),
(5, 'Winston Dunn'),
(6, 'Maria Phillips'),
(7, 'Derek Lawson'),
(8, 'Emily Carter'),
(9, 'Bryan Shepherd'),
(10, 'Alicia Gomez'),
(11, 'Nathan Reeves'),
(12, 'Harper Collins'),
(13, 'Olivia Barrett'),
(14, 'Ethan Montgomery'),
(15, 'Sophia Daniels');


-- create rides table
CREATE TABLE rides (
    id INT,
    passenger_id INT,
    distance FLOAT
);

-- insert data into rides table
INSERT INTO rides (id, passenger_id, distance) VALUES
(1, 3, 6),
(2, 2, 12),
(3, 4, 9),
(4, 3, 2),
(5, 5, 5),
(6, 2, 10),
(7, 1, 7),
(8, 4, 3.5),
(9, 5, 14),
(10, 3, 4.2),
(11, 1, 11),
(12, 2, 6.8),
(13, 5, 9.4),
(14, 4, 12.3),
(15, 3, 8.1);

-- creat zdc_user_travel_distance table with total distance traveled per user

CREATE TABLE zdc_user_travel_distance AS 
SELECT name, ROUND(SUM(r.distance)) AS distance_traveled
FROM users u
INNER JOIN rides r ON u.id = r.passenger_id
GROUP BY name
ORDER BY distance_traveled DESC ;
