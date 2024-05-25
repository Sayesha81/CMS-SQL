CREATE TABLE Teams(
Team_ID int primary key,
Name varchar(50),
Coach_ID int,
Captain_ID int ,
No_of_Wins int,
No_of_Loses int,
No_od_Draws int,
No_of_Bowlers int,
No_of_Batsman int,
foreign key (Coach_ID) references Coaches (Coach_ID)
);
INSERT INTO Teams VALUES 
(1, 'Pakistan National Team', 1, 101, 500, 400, 50, 8, 8),
(2, 'India National Team', 2, 201, 600, 350, 40, 9, 7),
(3, 'Australia National Team', 5, 301, 650, 320, 30, 10, 6),
(4, 'England National Team', 4, 401, 550, 330, 20, 9, 8),
(5, 'South Africa National Team', 3, 501, 520, 310, 25, 8, 8),
(6, 'New Zealand National Team', 6, 601, 480, 300, 28, 7, 9);
SELECT Team_ID, Name as Team_Name, 
       (No_of_Wins + No_of_Loses + No_od_Draws) as Total_Matches
FROM Teams
GROUP BY Team_ID, Name
ORDER BY Total_Matches DESC;

SELECT Teams.Team_ID, Teams.Name as Team_Name, Coaches.Coach_Name
FROM Teams
JOIN Coaches ON Teams.Coach_ID = Coaches.Coach_ID;

SELECT DISTINCT Coach_ID
FROM Teams
ORDER BY (
  SELECT COUNT(*)
  FROM Teams as T
  WHERE T.Coach_ID = Teams.Coach_ID
) DESC;

SELECT Coach_ID, AVG(No_of_Wins) as Avg_Wins
FROM Teams
GROUP BY Coach_ID
HAVING AVG(No_of_Wins) > 15;

SELECT *
FROM Teams
WHERE No_of_Wins > 20
  AND No_of_Bowlers > No_of_Batsman;