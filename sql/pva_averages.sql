SELECT 
    position,
    COUNT(player) AS player_count,
    ROUND(AVG(salary)::numeric, 2) AS avg_salary,
    ROUND(AVG(per)::numeric, 2) AS avg_per,
    ROUND(AVG(ws)::numeric, 2) AS avg_ws,
    ROUND(AVG(vorp)::numeric, 2) AS avg_vorp
FROM player_value_analysis
GROUP BY position
ORDER BY avg_salary DESC;