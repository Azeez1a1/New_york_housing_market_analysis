SELECT 
    BATH,
    MIN(PRICE) AS min_price,
    MAX(PRICE) AS max_price,
    AVG(PRICE) AS avg_price,
    (
        SELECT 
            AVG(PRICE)
        FROM (
            SELECT 
                PRICE,
                ROW_NUMBER() OVER (PARTITION BY BATH ORDER BY PRICE) AS rn,
                COUNT(*) OVER (PARTITION BY BATH) AS cnt
            FROM `ny-house-dataset`
            WHERE BATH BETWEEN 1 AND 5
        ) ranked
        WHERE 
            (cnt % 2 = 1 AND rn = (cnt + 1) / 2) OR
            (cnt % 2 = 0 AND rn IN (cnt / 2, cnt / 2 + 1))
    ) AS median_price
FROM 
    `ny-house-dataset`
WHERE 
    BATH BETWEEN 1 AND 5
GROUP BY 
    BATH
ORDER BY 
    BATH;
