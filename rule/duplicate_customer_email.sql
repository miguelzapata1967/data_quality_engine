-- rule: Check for duplicate customer_email values
-- purpose: Ensure that each customer_email value is unique in the customers tabl

SELECT 
    customer_email, 
    COUNT(*) AS email_count 
FROM 
    customers
WHERE 
    customer_email IS NOT NULL;