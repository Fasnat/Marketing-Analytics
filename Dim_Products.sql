SELECT 
*
FROM dbo.products
--Query to categorize product based on their price
SELECT
    ProductID,
    ProductName,
    Price,
    Category,

    CASE
      WHEN Price < 50 THEN 'Low'
      WHEN Price BETWEEN 50 AND 200 THEN 'Medium'
      ELSE 'High' 
    END AS priceCategory

FROM 
    dbo.products