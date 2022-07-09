# Write your MySQL query statement below
SELECT sp.name FROM SalesPerson AS sp
LEFT JOIN (Orders AS o JOIN Company AS c ON (o.com_id = c.com_id AND c.name = 'RED') )
ON sp.sales_id = o.sales_id WHERE o.sales_id IS NULL;