CREATE OR REPLACE VIEW player_value_analysis AS
SELECT
    s.player,
    s.team,
    s.position,
    s.games,
    s.minutes_per_game AS mpg,
    s.points_per_game AS ppg,
    s.assists AS ast,
    s.total_rebounds AS reb,
    c.salary,

    -- New: Salary tier grouping
    CASE
        WHEN c.salary < 2000000 THEN 'Minimum'
        WHEN c.salary BETWEEN 2000000 AND 8000000 THEN 'Role Player'
        WHEN c.salary BETWEEN 8000000 AND 20000000 THEN 'Starter'
        ELSE 'Star / Max'
    END AS salary_tier,

    a.per,
    a.ts_pct,
    a.ws,
    a.bpm,
    a.vorp
FROM stats AS s
LEFT JOIN contracts AS c
    ON LOWER(s.player) = LOWER(c.player)
LEFT JOIN adv AS a
    ON LOWER(s.player) = LOWER(a.player)
WHERE c.salary >= 1000000
  AND s.games >= 15
  AND s.minutes_per_game >= 10
  AND a.ws >= 1;