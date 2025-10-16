SELECT
    player,
    team,
    salary,
    ws,
    ROUND((ws::numeric / (salary::numeric / 1000000)), 3) AS ws_per_million
FROM player_value_analysis
WHERE salary IS NOT NULL
ORDER BY ws_per_million DESC
LIMIT 15;