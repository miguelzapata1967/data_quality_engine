-- Rule: Check for NULL order_date values 
-- Purpose: Ensure order_date is always populated in the orders table.
SELECT
      COUNT(*) AS null_order_date_count
FROM
      orders
WHERE order_date IS NULL;
