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
WHERE c.salary IS NOT NULL
    AND c.salary > 1157153;     /*Lowest rookie salary of the season*/