SELECT
    player,
    team,
    salary,
    ws
FROM player_value_analysis
WHERE salary IS NOT NULL
ORDER BY salary DESC;