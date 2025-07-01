WITH price_stats AS (
    SELECT 
        AVG(PRICE) AS mean,
        STDDEV(PRICE) AS stddev
    FROM 
        `ny-house-dataset`
)
SELECT 
    p.*
FROM 
    `ny-house-dataset` p, price_stats ps
WHERE 
    p.PRICE > ps.mean + 3 * ps.stddev  -- Extremely expensive
    OR p.PRICE < ps.mean - 3 * ps.stddev; -- Extremely cheap