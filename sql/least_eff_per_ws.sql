SELECT
    player,
    team,
    salary,
    ws,
    ROUND((ws::numeric / (salary::numeric / 1000000)), 3) AS ws_per_million
FROM player_value_analysis
WHERE salary IS NOT NULL
  AND ws IS NOT NULL
  AND salary > 3000000       -- same threshold you chose earlier
  AND games >= 41            -- consistent with your filtering rules
  AND mpg >= 13
ORDER BY ws_per_million ASC  -- ASCENDING = worst value first
LIMIT 15;