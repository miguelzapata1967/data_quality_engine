-- Rule: Check for NULL customer_name values 
-- Purpose: Ensure customer_name is always populated in the customers table.
SELECT
      COUNT(*) AS null_customer_name_count,
      COUNT(*)*1.0 / (SELECT COUNT(*) from customers) AS null_customer_name_persentage
FROM
      customers
WHERE customer_name IS NULL
  AND is_active = 1;
