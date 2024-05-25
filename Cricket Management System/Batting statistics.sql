CREATE TABLE Batting_Statistics (
Batting_Rank int,
Player_ID int,
Match_ID int,
Runs_Scored int,
Balls_Faced int,
strike_Rate float ,
Batting_Average float,
foreign key (Player_ID)references Players(Player_ID),
foreign key (Match_ID)references Match_Summery (Match_ID)
);
INSERT INTO Batting_Statistics VALUES 
(1, 101, 1, 70, 60, 116.67, 70.0),
(2, 201, 1, 80, 55, 145.45, 80.0),
(3, 301, 2, 75, 65, 115.38, 75.0),
(4, 401, 2, 85, 70, 121.43, 85.0),
(5, 503, 3, 90, 75, 120.0, 90.0),
(6, 601, 3, 95, 85, 111.76, 95.0);

 SELECT bs.Batting_Rank, p.Name, bs.Match_ID, bs.Runs_Scored, bs.Balls_Faced, bs.strike_Rate, bs.Batting_Average
   FROM Batting_Statistics bs
   JOIN Players p ON bs.Player_ID = p.Player_ID;
   
   SELECT bs.Batting_Rank, bs.Player_ID, ms.Match_Name, ms.Match_Date, bs.Runs_Scored, bs.Balls_Faced, bs.strike_Rate, bs.Batting_Average
   FROM Batting_Statistics bs
   JOIN Match_Summery ms ON bs.Match_ID = ms.Match_ID;
   
   SELECT bs.Batting_Rank, bs.Player_ID, bs.Match_ID, bs.Runs_Scored, bs.Balls_Faced, 
          (bs.Runs_Scored * 100.0 / bs.Balls_Faced) AS Calculated_Strike_Rate
   FROM Batting_Statistics bs;
   
   SELECT bs.Batting_Rank, bs.Player_ID, bs.Match_ID, bs.Runs_Scored
   FROM Batting_Statistics bs
   ORDER BY bs.Runs_Scored DESC;
   
      SELECT DISTINCT bs.Player_ID, p.Name
   FROM Batting_Statistics bs
   JOIN Players p ON bs.Player_ID = p.Player_ID;
   