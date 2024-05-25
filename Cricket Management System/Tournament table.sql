CREATE TABLE Tournaments(
Tournament_ID int primary key,
Nmae varchar(50),
Start_Date date,
End_Date date,
Format varchar(50),
No_of_Teams int,
No_of_Total_Matches int,
No_of_Each_Team_Matches int 
);
INSERT INTO Tournaments VALUES 
(1, 'ICC World Cup', '2024-02-01', '2024-04-15', 'ODI', 10, 48, 9),
(2, 'T20 World Cup', '2022-10-01', '2022-11-15', 'T20', 16, 45, 5),
(3, 'Champions Trophy', '2023-06-01', '2023-06-20', 'ODI', 8, 15, 3),
(4, 'Ashes Series', '2023-07-01', '2023-08-15', 'Test', 2, 5, 5),
(5, 'Asia Cup', '2023-09-01', '2023-09-15', 'ODI', 6, 13, 4),
(6, 'Big Bash League', '2023-12-01', '2024-01-15', 'T20', 8, 30, 7);

SELECT * FROM Tournaments
WHERE Format = 'ODI'
ORDER BY Start_Date;

SELECT * FROM Tournaments
WHERE No_of_Teams > 10
ORDER BY No_of_Teams DESC;

SELECT Format, SUM(No_of_Total_Matches) AS Total_Matches
FROM Tournaments
GROUP BY Format
ORDER BY Total_Matches DESC;

SELECT * FROM Tournaments
WHERE Start_Date BETWEEN '2023-01-01' AND '2023-12-31'
ORDER BY Start_Date;

SELECT Nmae, No_of_Teams, No_of_Each_Team_Matches
FROM Tournaments
ORDER BY No_of_Each_Team_Matches DESC;



