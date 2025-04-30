--Selecting Team Table
SELECT *
FROM team;

--Selecting Players from Manchester City
SELECT player_name
FROM player
WHERE team_id = 1;

--Selecting all match results, ordering by home team
SELECT m.match_id, t1.team_name AS home_team, t2.team_name AS away_team, m.home_score, m.away_score
FROM match_result m
JOIN team t1 ON m.home_team_id = t1.team_id
JOIN team t2 ON m.away_team_id = t2.team_id
ORDER BY home_team;


--Selecting team and points to see the current standings
SELECT t.team_name, s.total_points
FROM team t
JOIN standings s ON t.team_id = s.team_id
ORDER BY s.total_points desc;


--Selecting all matches with team names on April 27, 2025
SELECT m.match_id, t1.team_name AS home_team, m.home_score, t2.team_name AS away_team, m.away_score, m.match_date
FROM match_result m
JOIN team t1 ON m.home_team_id = t1.team_id
JOIN team t2 ON m.away_team_id = t2.team_id
WHERE m.match_date = TO_DATE('2025-04-27', 'YYYY-MM-DD');
  
  
--Select all player season stats
SELECT p.player_name, s.goals, s.assists, s.yellow_cards, s.red_cards, s.minutes_played
FROM player_season_stats s
JOIN player p ON s.player_id = p.player_id
ORDER BY s.goals DESC, s.assists DESC;


--Select goal scores from the team leading the league
SELECT p.player_name, t.team_name, ps.goals
FROM Player p
JOIN Team t ON p.team_id = t.team_id
JOIN Player_Season_Stats ps ON p.player_id = ps.player_id
WHERE ps.goals >= 1
AND p.team_id = (
    SELECT s.team_id 
    FROM Standings s
    WHERE s.total_points = (SELECT MAX(total_points) FROM Standings)
    );


--Select player stats from match 1 of the season
SELECT p.player_name, pms.*
FROM player_match_stats pms
JOIN player p ON pms.player_id = p.player_id
WHERE pms.match_id = 1
ORDER BY pms.goals desc, pms.assists desc;

