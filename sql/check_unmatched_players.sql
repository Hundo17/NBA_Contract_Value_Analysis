SELECT 'Stats but not Contracts' AS category, s.player
FROM stats s
LEFT JOIN contracts c
    ON LOWER(s.player) = LOWER(c.player)
WHERE c.player IS NULL


UNION ALL

SELECT 'Contracts but not Stats' AS category, c.player
FROM contracts c
LEFT JOIN stats s
    ON LOWER(s.player) = LOWER(c.player)
WHERE s.player IS NULL;     