use cricket_management_system;
create table Coaches(
Coach_ID int primary key,
Coach_Name varchar(50),
Nationality varchar(50),
Role varchar(50),
Experience int,
Speciality varchar(50),
Date_joined date,
Tournament_Wins int,
Current_on_Duty boolean
);
INSERT INTO Coaches VALUES 
(1, 'Mickey Arthur', 'South Africa', 'Head Coach', 20, 'Strategy', '2016-05-01', 5, TRUE),
(2, 'Ravi Shastri', 'India', 'Head Coach', 30, 'Motivation', '2017-07-13', 10, TRUE),
(3, 'Trevor Bayliss', 'Australia', 'Batting Coach', 25, 'Batting', '2015-06-01', 8, FALSE),
(4, 'Gary Kirsten', 'South Africa', 'Batting Coach', 22, 'Batting', '2011-01-05', 12, FALSE),
(5, 'Darren Lehmann', 'Australia', 'Head Coach', 28, 'Strategy', '2013-07-01', 7, FALSE),
(6, 'John Buchanan', 'Australia', 'Head Coach', 35, 'Motivation', '2000-03-01', 15, TRUE);


SELECT 
    T.Name AS Team_Name, C.Coach_Name,C.Nationality,C.Role,C.Experience FROM Teams T JOIN Coaches C ON T.Coach_ID = C.Coach_ID ORDER BY T.Name;

SELECT * FROM Coaches WHERE Nationality = 'Australia' HAVING Tournament_Wins > 5;

SELECT * FROM Coaches WHERE Speciality LIKE '%Batting%' HAVING Experience >= 25;

SELECT DISTINCT Nationality
FROM Coaches
ORDER BY (
  SELECT COUNT(*)
  FROM Coaches as C
  WHERE C.Nationality = Coaches.Nationality
) DESC;

SELECT Nationality, AVG(Tournament_Wins) as Avg_Wins
FROM Coaches
WHERE Experience > 1
GROUP BY Nationality
HAVING AVG(Tournament_Wins) > 2;

SELECT *
FROM Coaches
WHERE Experience > 1
  AND Tournament_Wins >= 5
  AND NOT Current_on_Duty;


