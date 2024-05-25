CREATE TABLE Rankings(
Team_ID int,
Team_Name varchar(50),
Ranking int,
Points int,
foreign key(Team_ID) references Teams(Team_ID)
);
INSERT INTO Rankings VALUES 
(1, 'Pakistan National Team', 2, 2800),
(2, 'India National Team', 1, 3000),
(3, 'Australia National Team', 3, 2700),
(4, 'England National Team', 4, 2600),
(5, 'South Africa National Team', 5, 2500),
(6, 'New Zealand National Team', 6, 2400);

select * from Rankings where Ranking <= 5 and points > 2000;
select avg(Points) as avg_Points from Rankings where Ranking <=10 having Avg(Points)> 1500;
select T.Team_ID, T.Name as Team_Name, R.Ranking , R.Points from Teams T join Rankings R on T.Team_ID = R.Team_ID;
Select Team_ID, Team_Name, sum(Points) as Total_Points from Rankings group by Team_ID, Team_Name order by Total_Points DESC;
select  Team_Name From Rankings Order BY Ranking asc;