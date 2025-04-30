-- Inserting teams into team table
INSERT INTO Team (team_id, team_name, city, manager_name)
VALUES (team_id_seq.NEXTVAL, 'Manchester City', 'Manchester', 'Pep Guardiola');

INSERT INTO Team (team_id, team_name, city, manager_name)
VALUES (team_id_seq.NEXTVAL, 'Manchester United', 'Manchester', 'Ruben Amorim');

INSERT INTO Team (team_id, team_name, city, manager_name)
VALUES (team_id_seq.NEXTVAL, 'Arsenal', 'London', 'Mikel Arteta');

INSERT INTO Team (team_id, team_name, city, manager_name)
VALUES (team_id_seq.NEXTVAL, 'Chelsea', 'London', 'Enzo Maresca');

INSERT INTO Team (team_id, team_name, city, manager_name)
VALUES (team_id_seq.NEXTVAL, 'Tottenham Hotspur', 'London', 'Ange Postecoglou');

INSERT INTO Team (team_id, team_name, city, manager_name)
VALUES (team_id_seq.NEXTVAL, 'Liverpool', 'Liverpool', 'Arne Slot');


--Inserting new teams into standings table
INSERT INTO Standings (team_id)
SELECT team_id FROM Team
WHERE team_id NOT IN (SELECT team_id FROM Standings);

-- Inserting players into player table
INSERT INTO Player (player_id, player_name, position, jersey_number, team_id)
VALUES (player_id_seq.NEXTVAL, 'Erling Haaland', 'Forward', 9, 1);

INSERT INTO Player (player_id, player_name, position, jersey_number, team_id)
VALUES (player_id_seq.NEXTVAL, 'Kevin De Bruyne', 'Midfield', 17, 1);

INSERT INTO Player (player_id, player_name, position, jersey_number, team_id)
VALUES (player_id_seq.NEXTVAL, 'Rodri', 'Midfiled', 18, 1);

INSERT INTO Player (player_id, player_name, position, jersey_number, team_id)
VALUES (player_id_seq.NEXTVAL, 'Ruben Dias', 'Defender', 3, 1);

INSERT INTO Player (player_id, player_name, position, jersey_number, team_id)
VALUES (player_id_seq.NEXTVAL, 'Ederson', 'Goalkeeper', 31, 1);


INSERT INTO Player (player_id, player_name, position, jersey_number, team_id)
VALUES (player_id_seq.NEXTVAL, 'Garnacho', 'Forward', 17, 2);

INSERT INTO Player (player_id, player_name, position, jersey_number, team_id)
VALUES (player_id_seq.NEXTVAL, 'Bruno Fernandes', 'Midfield', 8, 2);

INSERT INTO Player (player_id, player_name, position, jersey_number, team_id)
VALUES (player_id_seq.NEXTVAL, 'Casemiro', 'Midfield', 18, 2);

INSERT INTO Player (player_id, player_name, position, jersey_number, team_id)
VALUES (player_id_seq.NEXTVAL, 'Harry Maguire', 'Defender', 5, 2);

INSERT INTO Player (player_id, player_name, position, jersey_number, team_id)
VALUES (player_id_seq.NEXTVAL, 'Andre Onana', 'Goalkeeper', 24, 2);


INSERT INTO Player (player_id, player_name, position, jersey_number, team_id)
VALUES (player_id_seq.NEXTVAL, 'Bukayo Saka', 'Forward', 7, 3);

INSERT INTO Player (player_id, player_name, position, jersey_number, team_id)
VALUES (player_id_seq.NEXTVAL, 'Declan Rice', 'Midfielder', 41, 3);

INSERT INTO Player (player_id, player_name, position, jersey_number, team_id)
VALUES (player_id_seq.NEXTVAL, 'Martin Odegaard', 'Midfielder', 8, 3);

INSERT INTO Player (player_id, player_name, position, jersey_number, team_id)
VALUES (player_id_seq.NEXTVAL, 'William Saliba', 'Defender', 2, 3);

INSERT INTO Player (player_id, player_name, position, jersey_number, team_id)
VALUES (player_id_seq.NEXTVAL, 'David Raya', 'Goalkeeper', 22, 3);


INSERT INTO Player (player_id, player_name, position, jersey_number, team_id)
VALUES (player_id_seq.NEXTVAL, 'Cole Palmer', 'Forward', 10, 4);

INSERT INTO Player (player_id, player_name, position, jersey_number, team_id)
VALUES (player_id_seq.NEXTVAL, 'Enzo Fernández', 'Midfielder', 5, 4);

INSERT INTO Player (player_id, player_name, position, jersey_number, team_id)
VALUES (player_id_seq.NEXTVAL, 'Moisés Caicedo', 'Midfielder', 25, 4);

INSERT INTO Player (player_id, player_name, position, jersey_number, team_id)
VALUES (player_id_seq.NEXTVAL, 'Thiago Silva', 'Defender', 6, 4);

INSERT INTO Player (player_id, player_name, position, jersey_number, team_id)
VALUES (player_id_seq.NEXTVAL, 'Kepa Arrizabalaga', 'Goalkeeper', 1, 4);


INSERT INTO Player (player_id, player_name, position, jersey_number, team_id)
VALUES (player_id_seq.NEXTVAL, 'Hueng Min Son', 'Forward', 7, 5);

INSERT INTO Player (player_id, player_name, position, jersey_number, team_id)
VALUES (player_id_seq.NEXTVAL, 'James Maddison', 'Midfielder', 10, 5);

INSERT INTO Player (player_id, player_name, position, jersey_number, team_id)
VALUES (player_id_seq.NEXTVAL, 'Yves Bissouma', 'Midfielder', 38, 5);

INSERT INTO Player (player_id, player_name, position, jersey_number, team_id)
VALUES (player_id_seq.NEXTVAL, 'Cristian Romero', 'Defender', 17, 5);

INSERT INTO Player (player_id, player_name, position, jersey_number, team_id)
VALUES (player_id_seq.NEXTVAL, 'Hugo Lloris', 'Goalkeeper', 1, 5);


INSERT INTO Player (player_id, player_name, position, jersey_number, team_id)
VALUES (player_id_seq.NEXTVAL, 'Mohamed Salah', 'Forward', 11, 6);

INSERT INTO Player (player_id, player_name, position, jersey_number, team_id)
VALUES (player_id_seq.NEXTVAL, 'Alexis Mac Allister', 'Midfielder', 10, 6);

INSERT INTO Player (player_id, player_name, position, jersey_number, team_id)
VALUES (player_id_seq.NEXTVAL, 'Dominik Szoboszlai', 'Midfielder', 8, 6);

INSERT INTO Player (player_id, player_name, position, jersey_number, team_id)
VALUES (player_id_seq.NEXTVAL, 'Virgil van Dijk', 'Defender', 4, 6);

INSERT INTO Player (player_id, player_name, position, jersey_number, team_id)
VALUES (player_id_seq.NEXTVAL, 'Alisson Becker', 'Goalkeeper', 1, 6);


-- Inserting match into match_result table
-- Home: Manchester City vs. Manchester United
INSERT INTO Match_Result (match_id, match_date, home_team_id, away_team_id, home_score, away_score, home_result, away_result)
VALUES (match_id_seq.NEXTVAL, TO_DATE('2025-04-27', 'YYYY-MM-DD'), 1, 2, 2, 1, 'win', 'loss');

-- Away: Manchester United vs. Manchester City
INSERT INTO Match_Result (match_id, match_date, home_team_id, away_team_id, home_score, away_score, home_result, away_result)
VALUES (match_id_seq.NEXTVAL, TO_DATE('2025-05-27', 'YYYY-MM-DD'), 2, 1, 0, 1, 'loss', 'win');

-- Home: Manchester City vs. Arsenal
INSERT INTO Match_Result (match_id, match_date, home_team_id, away_team_id, home_score, away_score, home_result, away_result)
VALUES (match_id_seq.NEXTVAL, TO_DATE('2025-04-29', 'YYYY-MM-DD'), 1, 3, 3, 1, 'win', 'loss');

-- Away: Arsenal vs. Manchester City
INSERT INTO Match_Result (match_id, match_date, home_team_id, away_team_id, home_score, away_score, home_result, away_result)
VALUES (match_id_seq.NEXTVAL, TO_DATE('2025-05-29', 'YYYY-MM-DD'), 3, 1, 2, 2, 'draw', 'draw');

-- Home: Manchester City vs. Chelsea
INSERT INTO Match_Result (match_id, match_date, home_team_id, away_team_id, home_score, away_score, home_result, away_result)
VALUES (match_id_seq.NEXTVAL, TO_DATE('2025-05-02', 'YYYY-MM-DD'), 1, 4, 2, 0, 'win', 'loss');

-- Away: Chelsea vs. Manchester City
INSERT INTO Match_Result (match_id, match_date, home_team_id, away_team_id, home_score, away_score, home_result, away_result)
VALUES (match_id_seq.NEXTVAL, TO_DATE('2025-06-02', 'YYYY-MM-DD'), 4, 1, 1, 3, 'loss', 'win');

-- Home: Manchester City vs. Tottenham Hotspur
INSERT INTO Match_Result (match_id, match_date, home_team_id, away_team_id, home_score, away_score, home_result, away_result)
VALUES (match_id_seq.NEXTVAL, TO_DATE('2025-05-06', 'YYYY-MM-DD'), 1, 5, 1, 1, 'draw', 'draw');

-- Away: Tottenham Hotspur vs. Manchester City
INSERT INTO Match_Result (match_id, match_date, home_team_id, away_team_id, home_score, away_score, home_result, away_result)
VALUES (match_id_seq.NEXTVAL, TO_DATE('2025-06-06', 'YYYY-MM-DD'), 5, 1, 1, 0, 'win', 'loss');

-- Home: Manchester City vs. Liverpool
INSERT INTO Match_Result (match_id, match_date, home_team_id, away_team_id, home_score, away_score, home_result, away_result)
VALUES (match_id_seq.NEXTVAL, TO_DATE('2025-05-10', 'YYYY-MM-DD'), 1, 6, 0, 2, 'loss', 'win');

-- Away: Liverpool vs. Manchester City
INSERT INTO Match_Result (match_id, match_date, home_team_id, away_team_id, home_score, away_score, home_result, away_result)
VALUES (match_id_seq.NEXTVAL, TO_DATE('2025-06-10', 'YYYY-MM-DD'), 6, 1, 1, 0, 'win', 'loss');

-- Home: Manchester United vs. Arsenal
INSERT INTO Match_Result (match_id, match_date, home_team_id, away_team_id, home_score, away_score, home_result, away_result)
VALUES (match_id_seq.NEXTVAL, TO_DATE('2025-05-10', 'YYYY-MM-DD'), 2, 3, 1, 1, 'draw', 'draw');

-- Away: Arsenal vs. Manchester United
INSERT INTO Match_Result (match_id, match_date, home_team_id, away_team_id, home_score, away_score, home_result, away_result)
VALUES (match_id_seq.NEXTVAL, TO_DATE('2025-06-10', 'YYYY-MM-DD'), 3, 2, 3, 1, 'win', 'loss');

-- Home: Manchester United vs. Chelsea
INSERT INTO Match_Result (match_id, match_date, home_team_id, away_team_id, home_score, away_score, home_result, away_result)
VALUES (match_id_seq.NEXTVAL, TO_DATE('2025-05-06', 'YYYY-MM-DD'), 2, 4, 2, 1, 'win', 'loss');

-- Away: Chelsea vs. Manchester United
INSERT INTO Match_Result (match_id, match_date, home_team_id, away_team_id, home_score, away_score, home_result, away_result)
VALUES (match_id_seq.NEXTVAL, TO_DATE('2025-06-06', 'YYYY-MM-DD'), 4, 2, 1, 2, 'loss', 'win');

-- Home: Manchester United vs. Tottenham Hotspur
INSERT INTO Match_Result (match_id, match_date, home_team_id, away_team_id, home_score, away_score, home_result, away_result)
VALUES (match_id_seq.NEXTVAL, TO_DATE('2025-05-02', 'YYYY-MM-DD'), 2, 5, 1, 1, 'draw', 'draw');

-- Away: Tottenham Hotspur vs. Manchester United
INSERT INTO Match_Result (match_id, match_date, home_team_id, away_team_id, home_score, away_score, home_result, away_result)
VALUES (match_id_seq.NEXTVAL, TO_DATE('2025-06-02', 'YYYY-MM-DD'), 5, 2, 0, 1, 'loss', 'win');

-- Home: Manchester United vs. Liverpool
INSERT INTO Match_Result (match_id, match_date, home_team_id, away_team_id, home_score, away_score, home_result, away_result)
VALUES (match_id_seq.NEXTVAL, TO_DATE('2025-04-29', 'YYYY-MM-DD'), 2, 6, 1, 1, 'draw', 'draw');

-- Away: Liverpool vs. Manchester United
INSERT INTO Match_Result (match_id, match_date, home_team_id, away_team_id, home_score, away_score, home_result, away_result)
VALUES (match_id_seq.NEXTVAL, TO_DATE('2025-05-29', 'YYYY-MM-DD'), 6, 2, 3, 1, 'win', 'loss');

-- Home: Arsenal vs. Chelsea
INSERT INTO Match_Result (match_id, match_date, home_team_id, away_team_id, home_score, away_score, home_result, away_result)
VALUES (match_id_seq.NEXTVAL, TO_DATE('2025-04-27', 'YYYY-MM-DD'), 3, 4, 2, 2, 'draw', 'draw');

-- Away: Chelsea vs. Arsenal
INSERT INTO Match_Result (match_id, match_date, home_team_id, away_team_id, home_score, away_score, home_result, away_result)
VALUES (match_id_seq.NEXTVAL, TO_DATE('2025-05-27', 'YYYY-MM-DD'), 4, 3, 2, 3, 'loss', 'win');

-- Home: Arsenal vs. Tottenham Hotspur
INSERT INTO Match_Result (match_id, match_date, home_team_id, away_team_id, home_score, away_score, home_result, away_result)
VALUES (match_id_seq.NEXTVAL, TO_DATE('2025-05-02', 'YYYY-MM-DD'), 3, 5, 3, 1, 'win', 'loss');

-- Away: Tottenham Hotspur vs. Arsenal
INSERT INTO Match_Result (match_id, match_date, home_team_id, away_team_id, home_score, away_score, home_result, away_result)
VALUES (match_id_seq.NEXTVAL, TO_DATE('2025-06-02', 'YYYY-MM-DD'), 5, 3, 0, 2, 'loss', 'win');

-- Home: Arsenal vs. Liverpool
INSERT INTO Match_Result (match_id, match_date, home_team_id, away_team_id, home_score, away_score, home_result, away_result)
VALUES (match_id_seq.NEXTVAL, TO_DATE('2025-05-06', 'YYYY-MM-DD'), 3, 6, 2, 3, 'loss', 'win');

-- Away: Liverpool vs. Arsenal
INSERT INTO Match_Result (match_id, match_date, home_team_id, away_team_id, home_score, away_score, home_result, away_result)
VALUES (match_id_seq.NEXTVAL, TO_DATE('2025-06-06', 'YYYY-MM-DD'), 6, 3, 1, 1, 'draw', 'draw');

-- Home: Chelsea vs. Tottenham Hotspur
INSERT INTO Match_Result (match_id, match_date, home_team_id, away_team_id, home_score, away_score, home_result, away_result)
VALUES (match_id_seq.NEXTVAL, TO_DATE('2025-04-29', 'YYYY-MM-DD'), 4, 5, 2, 1, 'win', 'loss');

-- Away: Tottenham Hotspur vs. Chelsea
INSERT INTO Match_Result (match_id, match_date, home_team_id, away_team_id, home_score, away_score, home_result, away_result)
VALUES (match_id_seq.NEXTVAL, TO_DATE('2025-05-29', 'YYYY-MM-DD'), 5, 4, 1, 1, 'draw', 'draw');
 
-- Home: Chelsea vs. Liverpool
INSERT INTO Match_Result (match_id, match_date, home_team_id, away_team_id, home_score, away_score, home_result, away_result)
VALUES (match_id_seq.NEXTVAL, TO_DATE('2025-05-09', 'YYYY-MM-DD'), 4, 6, 0, 1, 'loss', 'win');

-- Away: Liverpool vs. Chelsea
INSERT INTO Match_Result (match_id, match_date, home_team_id, away_team_id, home_score, away_score, home_result, away_result)
VALUES (match_id_seq.NEXTVAL, TO_DATE('2025-06-09', 'YYYY-MM-DD'), 6, 4, 2, 0, 'win', 'loss');

-- Home: Tottenham Hotspur vs. Liverpool
INSERT INTO Match_Result (match_id, match_date, home_team_id, away_team_id, home_score, away_score, home_result, away_result)
VALUES (match_id_seq.NEXTVAL, TO_DATE('2025-04-27', 'YYYY-MM-DD'), 5, 6, 0, 3, 'loss', 'win');

-- Away: Liverpool vs. Tottenham Hotspur
INSERT INTO Match_Result (match_id, match_date, home_team_id, away_team_id, home_score, away_score, home_result, away_result)
VALUES (match_id_seq.NEXTVAL, TO_DATE('2025-05-27', 'YYYY-MM-DD'), 6, 5, 2, 1, 'win', 'loss');



-- Inserting all players into the player season stats
INSERT INTO player_season_stats (player_id, goals, assists, yellow_cards, red_cards, minutes_played)
SELECT p.player_id, 0 AS goals, 0 AS assists, 0 AS yellow_cards, 0 AS red_cards, 0 AS minutes_played
FROM player p;

-- Season stats should auto update with the match stats inserted below


-- Inserting stats into player match stats
-- Man City vs. Man United
INSERT INTO Player_Match_Stats (match_stat_id, match_id, player_id, goals, assists, yellow_cards, red_cards, minutes_played)
VALUES (match_stat_id_seq.NEXTVAL, 1, 1, 2, 0, 0, 0, 90);

INSERT INTO Player_Match_Stats (match_stat_id, match_id, player_id, goals, assists, yellow_cards, red_cards, minutes_played)
VALUES (match_stat_id_seq.NEXTVAL, 1, 2, 0, 1, 0, 0, 90);

INSERT INTO Player_Match_Stats (match_stat_id, match_id, player_id, goals, assists, yellow_cards, red_cards, minutes_played)
VALUES (match_stat_id_seq.NEXTVAL, 1, 3, 0, 1, 1, 0, 90);

INSERT INTO Player_Match_Stats (match_stat_id, match_id, player_id, goals, assists, yellow_cards, red_cards, minutes_played)
VALUES (match_stat_id_seq.NEXTVAL, 1, 4, 0, 0, 0, 0, 90);

INSERT INTO Player_Match_Stats (match_stat_id, match_id, player_id, goals, assists, yellow_cards, red_cards, minutes_played)
VALUES (match_stat_id_seq.NEXTVAL, 1, 5, 0, 0, 0, 0, 90);

INSERT INTO Player_Match_Stats (match_stat_id, match_id, player_id, goals, assists, yellow_cards, red_cards, minutes_played)
VALUES (match_stat_id_seq.NEXTVAL, 1, 6, 0, 0, 0, 0, 90);

INSERT INTO Player_Match_Stats (match_stat_id, match_id, player_id, goals, assists, yellow_cards, red_cards, minutes_played)
VALUES (match_stat_id_seq.NEXTVAL, 1, 7, 0, 1, 0, 0, 90);

INSERT INTO Player_Match_Stats (match_stat_id, match_id, player_id, goals, assists, yellow_cards, red_cards, minutes_played)
VALUES (match_stat_id_seq.NEXTVAL, 1, 8, 0, 0, 1, 0, 90);

INSERT INTO Player_Match_Stats (match_stat_id, match_id, player_id, goals, assists, yellow_cards, red_cards, minutes_played)
VALUES (match_stat_id_seq.NEXTVAL, 1, 9, 1, 0, 0, 0, 90);

INSERT INTO Player_Match_Stats (match_stat_id, match_id, player_id, goals, assists, yellow_cards, red_cards, minutes_played)
VALUES (match_stat_id_seq.NEXTVAL, 1, 10, 0, 0, 0, 0, 90);

--Arsenal vs. Chelsea
INSERT INTO Player_Match_Stats (match_stat_id, match_id, player_id, goals, assists, yellow_cards, red_cards, minutes_played)
VALUES (match_stat_id_seq.NEXTVAL, 19, 11, 1, 0, 0, 0, 90);

INSERT INTO Player_Match_Stats (match_stat_id, match_id, player_id, goals, assists, yellow_cards, red_cards, minutes_played)
VALUES (match_stat_id_seq.NEXTVAL, 19, 12, 1, 1, 0, 0, 90);

INSERT INTO Player_Match_Stats (match_stat_id, match_id, player_id, goals, assists, yellow_cards, red_cards, minutes_played)
VALUES (match_stat_id_seq.NEXTVAL, 19, 13, 0, 1, 1, 0, 90);

INSERT INTO Player_Match_Stats (match_stat_id, match_id, player_id, goals, assists, yellow_cards, red_cards, minutes_played)
VALUES (match_stat_id_seq.NEXTVAL, 19, 14, 0, 0, 1, 0, 90);

INSERT INTO Player_Match_Stats (match_stat_id, match_id, player_id, goals, assists, yellow_cards, red_cards, minutes_played)
VALUES (match_stat_id_seq.NEXTVAL, 19, 15, 0, 0, 0, 0, 90);

INSERT INTO Player_Match_Stats (match_stat_id, match_id, player_id, goals, assists, yellow_cards, red_cards, minutes_played)
VALUES (match_stat_id_seq.NEXTVAL, 19, 16, 1, 0, 0, 0, 90);

INSERT INTO Player_Match_Stats (match_stat_id, match_id, player_id, goals, assists, yellow_cards, red_cards, minutes_played)
VALUES (match_stat_id_seq.NEXTVAL, 19, 17, 1, 1, 0, 0, 90);

INSERT INTO Player_Match_Stats (match_stat_id, match_id, player_id, goals, assists, yellow_cards, red_cards, minutes_played)
VALUES (match_stat_id_seq.NEXTVAL, 19, 18, 0, 1, 1, 0, 90);

INSERT INTO Player_Match_Stats (match_stat_id, match_id, player_id, goals, assists, yellow_cards, red_cards, minutes_played)
VALUES (match_stat_id_seq.NEXTVAL, 19, 19, 0, 0, 0, 0, 90);

INSERT INTO Player_Match_Stats (match_stat_id, match_id, player_id, goals, assists, yellow_cards, red_cards, minutes_played)
VALUES (match_stat_id_seq.NEXTVAL, 19, 20, 0, 0, 0, 0, 90);


-- Spurs vs. Liverpool
INSERT INTO Player_Match_Stats (match_stat_id, match_id, player_id, goals, assists, yellow_cards, red_cards, minutes_played)
VALUES (match_stat_id_seq.NEXTVAL, 29, 21, 0, 0, 0, 0, 90);

INSERT INTO Player_Match_Stats (match_stat_id, match_id, player_id, goals, assists, yellow_cards, red_cards, minutes_played)
VALUES (match_stat_id_seq.NEXTVAL, 29, 22, 0, 0, 0, 1, 90);

INSERT INTO Player_Match_Stats (match_stat_id, match_id, player_id, goals, assists, yellow_cards, red_cards, minutes_played)
VALUES (match_stat_id_seq.NEXTVAL, 29, 23, 0, 0, 0, 0, 90);

INSERT INTO Player_Match_Stats (match_stat_id, match_id, player_id, goals, assists, yellow_cards, red_cards, minutes_played)
VALUES (match_stat_id_seq.NEXTVAL, 29, 24, 0, 0, 1, 0, 90);

INSERT INTO Player_Match_Stats (match_stat_id, match_id, player_id, goals, assists, yellow_cards, red_cards, minutes_played)
VALUES (match_stat_id_seq.NEXTVAL, 29, 25, 0, 0, 0, 0, 90);

INSERT INTO Player_Match_Stats (match_stat_id, match_id, player_id, goals, assists, yellow_cards, red_cards, minutes_played)
VALUES (match_stat_id_seq.NEXTVAL, 29, 26, 2, 0, 0, 0, 90);

INSERT INTO Player_Match_Stats (match_stat_id, match_id, player_id, goals, assists, yellow_cards, red_cards, minutes_played)
VALUES (match_stat_id_seq.NEXTVAL, 29, 27, 1, 1, 0, 0, 90);

INSERT INTO Player_Match_Stats (match_stat_id, match_id, player_id, goals, assists, yellow_cards, red_cards, minutes_played)
VALUES (match_stat_id_seq.NEXTVAL, 29, 28, 0, 1, 1, 0, 90);

INSERT INTO Player_Match_Stats (match_stat_id, match_id, player_id, goals, assists, yellow_cards, red_cards, minutes_played)
VALUES (match_stat_id_seq.NEXTVAL, 29, 29, 0, 1, 0, 0, 90);

INSERT INTO Player_Match_Stats (match_stat_id, match_id, player_id, goals, assists, yellow_cards, red_cards, minutes_played)
VALUES (match_stat_id_seq.NEXTVAL, 29, 30, 0, 0, 0, 0, 90);






