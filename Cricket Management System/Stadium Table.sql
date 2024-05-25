Create table Stadiums (
Stadium_ID int primary key,
Name varchar(50),
Country_Name varchar(50),
Capacity int,
Currently_in_Use boolean,
VIP_Seats int
);
INSERT INTO Stadiums VALUES 
(1, 'Gaddafi Stadium', 'Pakistan', 27000, TRUE, 3000),
(2, 'Eden Gardens', 'India', 68000, TRUE, 8000),
(3, 'Melbourne Cricket Ground', 'Australia', 100024, TRUE, 10000),
(4, 'Lord\'s', 'England', 30000, TRUE, 4000),
(5, 'Newlands', 'South Africa', 25000, FALSE, 2000),
(6, 'Wankhede Stadium', 'India', 33000, TRUE, 3500);

SELECT Country_Name, SUM(VIP_Seats) as Total_VIP_Seats
FROM Stadiums
GROUP BY Country_Name
ORDER BY Total_VIP_Seats DESC;

SELECT DISTINCT Country_Name
FROM Stadiums
ORDER BY Country_Name;

SELECT Country_Name, AVG(Capacity) as Avg_Capacity
FROM Stadiums
GROUP BY Country_Name
HAVING AVG(Capacity) > 40000;

SELECT *
FROM Stadiums
WHERE  Capacity > 2000
  AND Currently_in_Use = TRUE;
  
  select * from Stadiums where VIP_Seats > 3000;