CREATE TABLE Umpire (
Umpire_ID int primary key,
Name varchar (50),
Nationality varchar(50),
Experience int,
Umpire_Level varchar (50)
);
INSERT INTO Umpire VALUES 
(1, 'Aleem Dar', 'Pakistan', 20, 'Elite'),
(2, 'Nitin Menon', 'India', 10, 'Elite'),
(3, 'Richard Kettleborough', 'England', 15, 'Elite'),
(4, 'Kumar Dharmasena', 'Sri Lanka', 12, 'Elite'),
(5, 'Paul Reiffel', 'Australia', 8, 'Elite'),
(6, 'Marais Erasmus', 'South Africa', 18, 'Elite');

SELECT * FROM Umpire
WHERE Experience > 15
ORDER BY Umpire_Level;

SELECT Nationality, COUNT(*) AS Umpire_Count
FROM Umpire
GROUP BY Nationality
ORDER BY Umpire_Count DESC;

SELECT * FROM Umpire
ORDER BY Experience DESC;

SELECT DISTINCT Nationality
FROM Umpire;

select Name, Nationality, Experience from Umpire;



