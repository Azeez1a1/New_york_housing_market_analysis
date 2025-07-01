SELECT 
    TYPE,
    BEDS,
    AVG(PRICE) AS avg_price,
    COUNT(*) AS property_count
FROM 
   `ny-house-dataset`
GROUP BY 
    TYPE, BEDS
ORDER BY 
    TYPE, BEDS;