# Write your MySQL query statement below
SELECT activity_date AS day, COUNT(*) AS active_users
FROM (
    SELECT DISTINCT user_id, activity_date
    FROM Activity
) AS temp
WHERE activity_date BETWEEN DATE_SUB('2019-07-27', INTERVAL 29 DAY) AND '2019-07-27'
GROUP BY activity_date
ORDER BY day