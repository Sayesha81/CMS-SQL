CREATE TABLE Match_Summery(
	Match_ID int primary key ,
    Match_Name varchar(50),
    Match_Date date,
    Stadium_ID int,
    Team1_ID int,
    Team2_ID int,
    Winner_ID int,
    Man_of_the_Match_ID int,
    foreign key (Stadium_ID) references Stadiums(Stadium_ID),
    foreign key (Team1_ID) references Teams(Team_ID),
     foreign key (Team2_ID) references Teams(Team_ID),
    foreign key (Winner_ID) references Teams(Team_ID),
foreign key (Man_of_the_Match_ID) references Players(Player_ID)
);

INSERT INTO Match_Summery VALUES 
(1, 'Pakistan vs India', '2024-03-15', 1, 1, 2, 2, 201),
(2, 'Australia vs England', '2024-03-20', 3, 3, 4, 3, 301),
(3, 'South Africa vs New Zealand', '2024-03-25', 5, 5, 6, 5, 503),
(4, 'Pakistan vs Australia', '2024-03-30', 1, 1, 3, 3, 301),
(5, 'India vs England', '2024-04-05', 2, 2, 4, 4, 401),
(6, 'New Zealand vs Pakistan', '2024-04-10', 6, 6, 1, 6, 601);

# List all match names and their corresponding stadium names, ordered by match date:
SELECT ms.Match_Name, s.Name as Stadium_Name , Match_Date FROM Match_Summery ms JOIN Stadiums s ON ms.Stadium_ID = s.Stadium_ID ORDER BY ms.Match_Date;

#Get the names of players who have been named 'Man of the Match', without duplicates
SELECT DISTINCT ms.Match_Name,p.Name as Player_Name FROM Match_Summery ms JOIN Players p ON ms.Man_of_the_Match_ID = p.Player_ID;

SELECT Match_ID, Match_Name, Match_Date, Man_of_the_Match_ID
FROM Match_Summery
WHERE Match_Date > '2024-03-15' AND Man_of_the_Match_ID > 200;

SELECT  Winner_ID AS Team_ID, COUNT(*) AS Matches_Won
FROM Match_Summery
GROUP BY Winner_ID
HAVING COUNT(*) > 0;

SELECT * FROM Match_Summery
WHERE Stadium_ID = 1
ORDER BY Match_Date;

