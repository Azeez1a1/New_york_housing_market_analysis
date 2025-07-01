SELECT 
    LOCALITY,
    TYPE,
    COUNT(*) AS count,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (PARTITION BY LOCALITY), 2) AS percentage
FROM 
    `ny-house-dataset`
GROUP BY 
    LOCALITY, TYPE
HAVING 
    COUNT(*) >= 50
ORDER BY 
    percentage DESC;