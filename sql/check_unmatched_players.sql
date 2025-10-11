
--Players in stats but not in contracts
/*SELECT s.player
FROM stats s
LEFT JOIN contracts c
    ON LOWER(s.player) = LOWER(c.player)
WHERE c.player IS NULL;*/

-- Players in contracts but not in stats
    SELECT c.player
    FROM contracts c
    LEFT JOIN stats s
        ON LOWER(s.player) = LOWER(c.player)
    WHERE s.player IS NULL; 