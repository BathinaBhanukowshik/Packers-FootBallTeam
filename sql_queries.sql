-- 1. Get all players in the team
SELECT * FROM players;

-- 2. Find all players who scored more than 5 touchdowns
SELECT name, position, touchdowns
FROM players
WHERE touchdowns > 5;

-- 3. Find the oldest player on the team
SELECT name, age
FROM players
ORDER BY age DESC
LIMIT 1;

-- 4. Get the average age of players on the team
SELECT AVG(age) AS average_age
FROM players;

-- 5. List players by position with total touchdowns per position
SELECT position, SUM(touchdowns) AS total_touchdowns
FROM players
GROUP BY position
ORDER BY total_touchdowns DESC;
