# Write your MySQL query statement below
SELECT today.id 
FROM Weather AS today JOIN Weather AS yesterday
WHERE today.temperature > yesterday.temperature
AND yesterday.recordDate = DATE_SUB(today.recordDate, interval 1 day);