SELECT
    player,
    team,
    salary,
    ts_pct
FROM player_value_analysis
WHERE salary IS NOT NULL
ORDER BY ts_pct DESC;