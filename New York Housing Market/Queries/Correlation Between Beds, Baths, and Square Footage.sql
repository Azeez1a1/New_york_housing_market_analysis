SELECT 
    BEDS,
    BATH,
    AVG(PROPERTYSQFT) AS avg_sqft,
    AVG(PRICE) AS avg_price
FROM 
    `ny-house-dataset`
WHERE 
    PROPERTYSQFT > 0
GROUP BY 
    BEDS, BATH
ORDER BY 
    BEDS, BATH;