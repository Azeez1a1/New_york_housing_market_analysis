SELECT 
    BROKERTITLE,
    COUNT(*) AS total_listings,
    AVG(PRICE) AS avg_price,
    MAX(PRICE) AS max_price,
    SUM(PRICE) AS total_sales_volume
FROM 
    `ny-house-dataset`
GROUP BY 
    BROKERTITLE
HAVING 
    COUNT(*) >= 10  -- Only brokers with at least 10 listings
ORDER BY 
    avg_price DESC;