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
        WHEN c.salary BETWEEN 3000000 AND 12000000 THEN 'Role Player'
        WHEN c.salary BETWEEN 12000000 AND 25000000 THEN 'Starter'
        WHEN c.salary BETWEEN 25000000 AND 35000000 THEN 'Star'
        ELSE 'Supermax'
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
WHERE c.salary >= 3000000
  AND s.games >= 41
  AND s.minutes_per_game >= 13
  AND a.ws >= 1;