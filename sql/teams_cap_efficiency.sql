SELECT
    team,
    SUM(salary) AS total_salary,
    SUM(ws) AS total_ws,
    ROUND(SUM(ws) / (SUM(salary) / 1000000), 2) AS ws_per_million
FROM player_value_analysis
GROUP BY team
ORDER BY ws_per_million DESC;