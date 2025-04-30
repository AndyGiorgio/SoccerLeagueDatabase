DROP TABLE Standings CASCADE CONSTRAINTS;
DROP TABLE Match_Result CASCADE CONSTRAINTS;
DROP TABLE Player CASCADE CONSTRAINTS;
DROP TABLE Team CASCADE CONSTRAINTS;
DROP TABLE Player_Season_Stats CASCADE CONSTRAINTS;
DROP TABLE Player_Match_Stats CASCADE CONSTRAINTS;

DROP SEQUENCE team_id_seq;
DROP SEQUENCE player_id_seq;
DROP SEQUENCE match_id_seq;
DROP SEQUENCE stat_id_seq;
DROP SEQUENCE match_stat_id;

-- Create sequence for all IDs
CREATE SEQUENCE team_id_seq START WITH 1 INCREMENT BY 1 NOCACHE NOCYCLE;
CREATE SEQUENCE player_id_seq START WITH 1 INCREMENT BY 1 NOCACHE NOCYCLE;
CREATE SEQUENCE match_id_seq START WITH 1 INCREMENT BY 1 NOCACHE NOCYCLE;
CREATE SEQUENCE stat_id_seq START WITH 1 INCREMENT BY 1 NOCACHE NOCYCLE;
CREATE SEQUENCE match_stat_id START WITH 1 INCREMENT BY 1 NOCACHE NOCYCLE;

-- Create the Team table
CREATE TABLE Team (
    team_id NUMBER PRIMARY KEY,
    team_name VARCHAR2(100) NOT NULL,
    city VARCHAR2(100),
    manager_name VARCHAR2(100)
);

-- Create the Player table
CREATE TABLE Player (
    player_id NUMBER PRIMARY KEY,
    player_name VARCHAR2(100) NOT NULL,
    position VARCHAR2(50),
    jersey_number NUMBER,
    team_id NUMBER,
    FOREIGN KEY (team_id) REFERENCES Team(team_id)
);

-- Create the Match_Result table
CREATE TABLE Match_Result (
    match_id NUMBER PRIMARY KEY,
    match_date DATE NOT NULL,
    home_team_id NUMBER NOT NULL,
    away_team_id NUMBER NOT NULL,
    home_score NUMBER,
    away_score NUMBER,
    home_result VARCHAR2(50),
    away_result VARCHAR2(50),
    FOREIGN KEY (home_team_id) REFERENCES Team(team_id),
    FOREIGN KEY (away_team_id) REFERENCES Team(team_id),
    CHECK (home_result IN ('win', 'loss', 'draw')),
    CHECK (away_result IN ('win', 'loss', 'draw')),
    CHECK (
        (home_result = 'win' AND away_result = 'loss') OR  -- Must be win/loss
        (home_result = 'loss' AND away_result = 'win') OR -- loss/win
        (home_result = 'draw' AND away_result = 'draw')
    )  -- or draw/draw
);

-- Create the Standings table
CREATE TABLE Standings (
    team_id NUMBER,
    total_games NUMBER DEFAULT 0,
    total_points NUMBER DEFAULT 0,
    total_wins NUMBER DEFAULT 0,
    total_losses NUMBER DEFAULT 0,
    total_draws NUMBER DEFAULT 0,
    total_goals_for NUMBER DEFAULT 0,
    total_goals_against NUMBER DEFAULT 0,
    goal_difference NUMBER DEFAULT 0,
    FOREIGN KEY (team_id) REFERENCES Team(team_id)
);

-- Create the Player Stats table
CREATE TABLE Player_Season_Stats (
    player_id NUMBER,
    goals NUMBER DEFAULT 0,
    assists NUMBER DEFAULT 0,
    yellow_cards NUMBER DEFAULT 0,
    red_cards NUMBER DEFAULT 0,
    minutes_played NUMBER DEFAULT 0,
    FOREIGN KEY (player_id) REFERENCES Player(player_id)
);

-- Create the Match Stats table
CREATE TABLE Player_Match_Stats (
    match_stat_id NUMBER PRIMARY KEY,
    player_id NUMBER,
    match_id NUMBER,
    goals NUMBER DEFAULT 0,
    assists NUMBER DEFAULT 0,
    yellow_cards NUMBER DEFAULT 0,
    red_cards NUMBER DEFAULT 0,
    minutes_played NUMBER DEFAULT 0,
    FOREIGN KEY (match_id) REFERENCES Match_Result(match_id),
    FOREIGN KEY (player_id) REFERENCES Player(player_id)
);

-- Trigger for automatically updating standings table with the match_result insert (Manually update standings for updates)
CREATE OR REPLACE TRIGGER update_standings
AFTER INSERT ON Match_Result
FOR EACH ROW
BEGIN
    -- Update the home team's standings
    IF :NEW.home_result = 'win' THEN
        UPDATE Standings
        SET total_points = total_points + 3,  -- 3 points for a win
            total_wins = total_wins + 1,
            total_losses = total_losses,
            total_games = total_games + 1
        WHERE team_id = :NEW.home_team_id;
    ELSIF :NEW.home_result = 'loss' THEN
        UPDATE Standings
        SET total_points = total_points,
            total_wins = total_wins,
            total_losses = total_losses + 1,
            total_games = total_games + 1
        WHERE team_id = :NEW.home_team_id;
    ELSE
        UPDATE Standings
        SET total_points = total_points + 1,  -- 1 point for a draw
            total_draws = total_draws + 1,
            total_games = total_games + 1
        WHERE team_id = :NEW.home_team_id;
    END IF;

    -- Update the away team's standings
    IF :NEW.away_result = 'win' THEN
        UPDATE Standings
        SET total_points = total_points + 3,  -- 3 points for a win
            total_wins = total_wins + 1,
            total_losses = total_losses,
            total_games = total_games + 1
        WHERE team_id = :NEW.away_team_id;
    ELSIF :NEW.away_result = 'loss' THEN
        UPDATE Standings
        SET total_points = total_points,
            total_wins = total_wins,
            total_losses = total_losses + 1,
            total_games = total_games + 1
        WHERE team_id = :NEW.away_team_id;
    ELSE
        UPDATE Standings
        SET total_points = total_points + 1,  -- 1 point for a draw
            total_draws = total_draws + 1,
            total_games = total_games + 1
        WHERE team_id = :NEW.away_team_id;
    END IF;

    -- Update goal statistics
    UPDATE Standings
    SET total_goals_for = total_goals_for + :NEW.home_score,
        total_goals_against = total_goals_against + :NEW.away_score,
        goal_difference = total_goals_for - total_goals_against
    WHERE team_id = :NEW.home_team_id;

    UPDATE Standings
    SET total_goals_for = total_goals_for + :NEW.away_score,
        total_goals_against = total_goals_against + :NEW.home_score,
        goal_difference = total_goals_for - total_goals_against
    WHERE team_id = :NEW.away_team_id;
END;
/


CREATE OR REPLACE TRIGGER update_season_stats
AFTER INSERT ON Player_Match_Stats
FOR EACH ROW
DECLARE
    -- Declare a variable to hold the season stats for the player
    existing_stats Player_Season_Stats%ROWTYPE;
BEGIN
    -- Try to find the existing season stats for the player (for the 2025 season, for example)
    SELECT *
    INTO existing_stats
    FROM Player_Season_Stats
    WHERE player_id = :NEW.player_id;

    -- If the player already has a record, update the stats
    UPDATE Player_Season_Stats
    SET
        goals = existing_stats.goals + :NEW.goals,
        assists = existing_stats.assists + :NEW.assists,
        yellow_cards = existing_stats.yellow_cards + :NEW.yellow_cards,
        red_cards = existing_stats.red_cards + :NEW.red_cards,
        minutes_played = existing_stats.minutes_played + :NEW.minutes_played
    WHERE player_id = existing_stats.player_id;

EXCEPTION
    -- If no record exists for the player in the current season, create a new one
    WHEN NO_DATA_FOUND THEN
        INSERT INTO Player_Season_Stats (player_id, goals, assists, yellow_cards, red_cards, minutes_played)
        VALUES (:NEW.player_id, :NEW.goals, :NEW.assists, :NEW.yellow_cards, :NEW.red_cards, :NEW.minutes_played);
END;
/