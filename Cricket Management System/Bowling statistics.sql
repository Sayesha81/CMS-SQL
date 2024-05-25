CREATE TABLE Bowling_Statistics (
Bowling_Rank int,
Player_ID int,
Match_ID int,
Overs_Bowled float,
Runs_Conceded int,
Wicket_taken int ,
Bowling_Average float,
foreign key (Player_ID)references Players(Player_ID),
foreign key (Match_ID)references Match_Summery (Match_ID)
);
INSERT INTO Bowling_Statistics VALUES 
(1, 102, 1, 10.0, 50, 2, 25.0),
(2, 202, 1, 10.0, 45, 3, 15.0),
(3, 302, 2, 10.0, 60, 4, 15.0),
(4, 402, 2, 10.0, 55, 2, 27.5),
(5, 502, 3, 10.0, 50, 3, 16.67),
(6, 602, 3, 10.0, 55, 1, 55.0);

SELECT bs.Bowling_Rank, p.Name, bs.Match_ID, bs.Overs_Bowled, bs.Runs_Conceded, bs.Wicket_taken, bs.Bowling_Average
   FROM Bowling_Statistics bs
   JOIN Players p ON bs.Player_ID = p.Player_ID;
   
   SELECT bs.Bowling_Rank, bs.Player_ID, ms.Match_Name, ms.Match_Date, bs.Overs_Bowled, bs.Runs_Conceded, bs.Wicket_taken, bs.Bowling_Average
   FROM Bowling_Statistics bs
   JOIN Match_Summery ms ON bs.Match_ID = ms.Match_ID;
   
 SELECT bs.Player_ID, p.Name, AVG(bs.Bowling_Average) AS Avg_Bowling_Average
   FROM Bowling_Statistics bs
   JOIN Players p ON bs.Player_ID = p.Player_ID
   GROUP BY bs.Player_ID, p.Name
   HAVING AVG(bs.Bowling_Average) < 20;
   
   SELECT DISTINCT bs.Player_ID, p.Name
   FROM Bowling_Statistics bs
   JOIN Players p ON bs.Player_ID = p.Player_ID;
   
    SELECT bs.Bowling_Rank, bs.Player_ID, bs.Match_ID, bs.Wicket_taken
   FROM Bowling_Statistics bs
   ORDER BY bs.Wicket_taken DESC;
   
   