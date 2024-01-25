-- Compressed Mean

SELECT 
  ROUND(
    SUM(CAST(item_count AS decimal)*order_occurrences)
    /SUM(order_occurrences)
  ,1) AS mean
FROM items_per_order;
