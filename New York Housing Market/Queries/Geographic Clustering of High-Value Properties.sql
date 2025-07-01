SELECT 
    LATITUDE,
    LONGITUDE,
    PRICE,
    FORMATTED_ADDRESS
FROM 
    `ny-house-dataset`
WHERE 
    PRICE > (SELECT AVG(PRICE) * 2 FROM `ny-house-dataset`) -- Top-tier properties
ORDER BY 
    PRICE DESC;