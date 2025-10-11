SELECT 
    s.*,          -- all columns from stats
    c.salary      -- the salary column from contracts
FROM 
    stats AS s
JOIN 
    contracts AS c
ON 
    LOWER(s.player) = LOWER(c.player);