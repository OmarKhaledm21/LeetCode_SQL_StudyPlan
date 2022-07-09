# Write your MySQL query statement below
SELECT name FROM SalesPerson
WHERE sales_id NOT IN ( SELECT DISTINCT sales_id FROM Orders
                        WHERE com_id =(SELECT com_id FROM Company AS c WHERE c.name="RED") )