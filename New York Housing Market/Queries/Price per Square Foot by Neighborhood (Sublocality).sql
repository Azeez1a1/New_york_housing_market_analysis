SELECT 
    SUBLOCALITY,
    AVG(PRICE / PROPERTYSQFT) AS price_per_sqft,
    COUNT(*) AS listings
FROM 
    `ny-house-dataset`
WHERE 
    PROPERTYSQFT > 0
GROUP BY 
    SUBLOCALITY
ORDER BY 
    price_per_sqft DESC;