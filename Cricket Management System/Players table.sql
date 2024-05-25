use  cricket_management_system; 
CREATE TABLE Players(
Player_ID int primary key,
Name  varchar (50),
Date_of_Birth date,
Nationality varchar(50),
Team_ID int,
No_of_Worldcups int,
No_of_Matches int,
Role varchar(50),
Batting_Average float,
Batting_Style varchar(50),
Bowling_Average float,
Bowling_Style varchar(50),
foreign key (Team_ID) references Teams(Team_ID)
);
INSERT INTO Players VALUES 
(101, 'Babar Azam', '1994-10-15', 'Pakistan', 1, 2, 80, 'Batsman', 55.0, 'Right-hand', 0.0, 'Right-arm leg spin'),
(102, 'Shaheen Afridi', '2000-04-06', 'Pakistan', 1, 1, 40, 'Bowler', 10.0, 'Left-hand', 20.5, 'Left-arm fast'),
(103, 'Shadab Khan', '1998-10-04', 'Pakistan', 1, 1, 30, 'All-rounder', 30.0, 'Right-hand', 25.0, 'Right-arm leg spin'),
(104, 'Mohammad Rizwan', '1992-06-01', 'Pakistan', 1, 1, 60, 'Wicketkeeper', 40.0, 'Right-hand', 0.0, 'Right-arm off-spin'),
(105, 'Fakhar Zaman', '1990-04-10', 'Pakistan', 1, 1, 45, 'Batsman', 35.0, 'Left-hand', 0.0, 'Right-arm medium'),
(106, 'Hasan Ali', '1994-07-02', 'Pakistan', 1, 1, 50, 'Bowler', 15.0, 'Right-hand', 25.0, 'Right-arm fast'),

(201, 'Virat Kohli', '1988-11-05', 'India', 2, 2, 100, 'Batsman', 58.0, 'Right-hand', 0.0, 'Right-arm medium'),
(202, 'Jasprit Bumrah', '1993-12-06', 'India', 2, 1, 50, 'Bowler', 12.0, 'Right-hand', 22.0, 'Right-arm fast'),
(203, 'Rohit Sharma', '1987-04-30', 'India', 2, 2, 95, 'Batsman', 55.5, 'Right-hand', 0.0, 'Right-arm off-spin'),
(204, 'Hardik Pandya', '1993-10-11', 'India', 2, 1, 60, 'All-rounder', 35.0, 'Right-hand', 28.0, 'Right-arm fast-medium'),
(205, 'Ravindra Jadeja', '1988-12-06', 'India', 2, 1, 85, 'All-rounder', 32.0, 'Left-hand', 24.5, 'Left-arm orthodox'),
(206, 'KL Rahul', '1992-04-18', 'India', 2, 1, 70, 'Wicketkeeper', 45.0, 'Right-hand', 0.0, 'Right-arm medium'),

(301, 'David Warner', '1986-10-27', 'Australia', 3, 2, 90, 'Batsman', 50.0, 'Left-hand', 0.0, 'Right-arm leg spin'),
(302, 'Pat Cummins', '1993-05-08', 'Australia', 3, 1, 55, 'Bowler', 13.0, 'Right-hand', 22.5, 'Right-arm fast'),
(303, 'Steve Smith', '1989-06-02', 'Australia', 3, 2, 85, 'Batsman', 55.0, 'Right-hand', 0.0, 'Right-arm leg spin'),
(304, 'Mitchell Starc', '1990-01-30', 'Australia', 3, 1, 60, 'Bowler', 12.0, 'Left-hand', 22.0, 'Left-arm fast'),
(305, 'Glenn Maxwell', '1988-10-14', 'Australia', 3, 1, 65, 'All-rounder', 30.0, 'Right-hand', 25.0, 'Right-arm off-spin'),
(306, 'Alex Carey', '1991-08-27', 'Australia', 3, 1, 50, 'Wicketkeeper', 40.0, 'Left-hand', 0.0, 'Right-arm medium'),

(401, 'Joe Root', '1990-12-30', 'England', 4, 2, 95, 'Batsman', 52.0, 'Right-hand', 0.0, 'Right-arm off-spin'),
(402, 'Jofra Archer', '1995-04-01', 'England', 4, 1, 40, 'Bowler', 15.0, 'Right-hand', 22.0, 'Right-arm fast'),
(403, 'Ben Stokes', '1991-06-04', 'England', 4, 2, 85, 'All-rounder', 35.0, 'Left-hand', 24.5, 'Right-arm fast-medium'),
(404, 'Jos Buttler', '1990-09-08', 'England', 4, 1, 75, 'Wicketkeeper', 45.0, 'Right-hand', 0.0, 'Right-arm medium'),
(405, 'Jonny Bairstow', '1989-09-26', 'England', 4, 1, 80, 'Batsman', 48.0, 'Right-hand', 0.0, 'Right-arm medium'),
(406, 'Chris Woakes', '1989-03-02', 'England', 4, 1, 60, 'Bowler', 18.0, 'Right-hand', 25.0, 'Right-arm fast-medium'),

(501, 'Quinton de Kock', '1992-12-17', 'South Africa', 5, 2, 85, 'Wicketkeeper', 45.0, 'Left-hand', 0.0, 'Right-arm medium'),
(502, 'Kagiso Rabada', '1995-05-25', 'South Africa', 5, 1, 50, 'Bowler', 14.0, 'Right-hand', 22.5, 'Right-arm fast'),
(503, 'Faf du Plessis', '1984-07-13', 'South Africa', 5, 2, 90, 'Batsman', 52.0, 'Right-hand', 0.0, 'Right-arm leg spin'),
(504, 'AB de Villiers', '1984-02-17', 'South Africa', 5, 2, 95, 'Batsman', 55.0, 'Right-hand', 0.0, 'Right-arm medium'),
(505, 'Dale Steyn', '1983-06-27', 'South Africa', 5, 1, 75, 'Bowler', 16.0, 'Right-hand', 24.5, 'Right-arm fast'),
(506, 'JP Duminy', '1984-04-14', 'South Africa', 5, 1, 70, 'All-rounder', 35.0, 'Left-hand', 25.0, 'Right-arm off-spin'),

(601, 'Kane Williamson', '1990-08-08', 'New Zealand', 6, 2, 85, 'Batsman', 52.0, 'Right-hand', 0.0, 'Right-arm off-spin'),
(602, 'Trent Boult', '1989-07-22', 'New Zealand', 6, 1, 50, 'Bowler', 14.0, 'Right-hand', 22.5, 'Left-arm fast'),
(603, 'Ross Taylor', '1984-03-08', 'New Zealand', 6, 2, 90, 'Batsman', 52.0, 'Right-hand', 0.0, 'Right-arm off-spin'),
(604, 'Tim Southee', '1988-12-11', 'New Zealand', 6, 1, 75, 'Bowler', 16.0, 'Right-hand', 24.5, 'Right-arm fast'),
(605, 'Tom Latham', '1992-04-02', 'New Zealand', 6, 1, 65, 'Wicketkeeper', 45.0, 'Left-hand', 0.0, 'Right-arm medium'),
(606, 'Mitchell Santner', '1992-02-05', 'New Zealand', 6, 1, 60, 'All-rounder', 35.0, 'Left-hand', 25.0, 'Left-arm orthodox');

                             # QUERIES
                             
select p.Player_ID, p.Name, T.Name as Team_Name from Players p join Teams T on p.Team_ID = T.Team_ID;

select p.Player_ID, p.Name, T.Name as Team_Name from Players p join Teams T on p.Team_ID = T.Team_ID where T.Name= "Pakistan National Team";

select T.Name as Team_Name, SUM(p.No_of_Matches) as Total_Matches from Players p join Teams T on p.Team_ID = T.Team_ID group by T.Name;

select Player_ID, Name, Batting_Average, Bowling_Average from Players where Bowling_Average > Batting_Average ;

select Player_ID, Name, Batting_Style from Players where Batting_Style like 'Right%';

select Nationality, SUM(No_of_Worldcups) as Total_Worldcups from Players group by Nationality;

select Player_ID, Name,Nationality, No_of_Worldcups, Batting_Average from Players where No_of_Worldcups = 1 and Batting_Average > 40;