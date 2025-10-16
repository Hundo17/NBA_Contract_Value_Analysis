SELECT
    player,
    team,
    salary,
    per
FROM player_value_analysis
WHERE salary IS NOT NULL
ORDER BY per DESC;