# ⚽ Soccer League Database

This repository contains the full SQL setup for a fictional soccer league database. It includes scripts for creating the schema, inserting initial data, and running test queries to verify functionality.

## Files Included

- `soccer-database-schema.sql`: Creates all necessary tables and sequences for the database.
- `soccer-database-data.sql`: Populates the tables with sample data (teams, players, match results, etc.).
- `soccer-database-tester.sql`: Contains a set of SQL queries to test and demonstrate the structure and relationships of the database.
- `README.md`: Documentation and project overview.

## Database Structure

The database is designed to model a single soccer season and includes the following tables:

- **Team**: Stores team information.
- **Player**: Stores player data and links players to their team.
- **Match_Result**: Contains data on individual matches including team scores and match dates.
- **Player_Match_Stats**: Stores player performance stats for individual matches.
- **Player_Season_Stats**: Aggregates player performance over the season.
- **Standings**: Tracks team performance (wins, losses, draws, points, etc.).

### Relationships

- Players are linked to Teams.
- Matches are linked to home and away Teams.
- Match and Season stats are linked to Players.
- Standings are linked to Teams.

## How to Use

1. Open your Oracle SQL environment.
2. Run `soccer-database-schema.sql` to create the database structure.
3. Run `soccer-database-data.sql` to populate the tables with initial data.
4. Run `soccer-database-tester.sql` to verify functionality and explore the data.


## Notes

- Primary keys are managed using sequences.
- A trigger has been implemented to update `Standings` based on new entries in `Match_Results`.
- A trigger has been implemented to update `Player_Season_Stats` based on new entries in `Player_Match_Stats`.
- Foreign key constraints ensure relational integrity between all tables.

## Author

**Andy Giorgio**  
Villanova University  
Statistics & Economics | Minor in CS  
Created as part of a soccer league data modeling project.
