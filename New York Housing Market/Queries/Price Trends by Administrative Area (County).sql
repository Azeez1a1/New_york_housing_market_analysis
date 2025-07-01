SELECT 
    ADMINISTRATIVE_AREA_LEVEL_2 AS county,
    AVG(PRICE) AS avg_price,
    AVG(PRICE / NULLIF(PROPERTYSQFT, 0)) AS avg_price_per_sqft,
    COUNT(*) AS listings
FROM 
    `ny-house-dataset`
GROUP BY 
    county
ORDER BY 
    avg_price DESC;