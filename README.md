# World Cup Database

This project is about building and querying a database of World Cup games from the final three rounds since 2014, using PostgreSQL.

## What this project is

- I created a `worldcup` database with two tables: `teams` and `games`.
- The `teams` table stores unique team names with IDs.
- The `games` table stores match info including year, round, participating teams (by ID), and goals scored.
- Data comes from the `games.csv` file, which lists all the relevant games and scores.

## What I learned and accomplished

- I used **basic SQL JOINs** to relate the `games` and `teams` tables efficiently, practicing how to connect tables with foreign keys.
- I wrote a **Bash script (`insert_data.sh`)** that reads the CSV and inserts teams and games into the database without duplicating data.
- I practiced **command-line PostgreSQL queries** through Bash and improved my scripting skills.
- I completed SQL queries (`queries.sh`) that calculate statistics like averages, winners per round, and total goals.
- I made sure the data integrity is maintained by properly using primary and foreign keys.
  
This project helped me strengthen my understanding of relational databases, writing joins, and automating data insertion with Bash scripting.

---

Feel free to explore the scripts and the SQL queries to see how everything ties together!