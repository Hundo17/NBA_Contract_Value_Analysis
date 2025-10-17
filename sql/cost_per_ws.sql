SELECT
    player,
    team,
    salary,
    ws,
    ROUND((salary::numeric / ws), 2) AS cost_per_ws
FROM player_value_analysis
WHERE ws > 0
ORDER BY cost_per_ws ASC
LIMIT 15;