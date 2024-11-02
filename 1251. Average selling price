SELECT prices.product_id, IFNULL(ROUND(SUM(price*units) / SUM(units),2) ,0 ) AS average_price
FROM Prices LEFT JOIN UnitsSold 
ON prices.product_id = unitssold.product_id
AND purchase_date BETWEEN start_date AND end_date
GROUP BY product_id
