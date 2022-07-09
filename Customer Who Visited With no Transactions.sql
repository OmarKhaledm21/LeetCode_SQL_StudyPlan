# Write your MySQL query statement below
SELECT customer_id, COUNT(*) AS count_no_trans
FROM Visits LEFT JOIN Transactions USING (visit_id)
WHERE amount IS NULL
GROUP BY customer_id;