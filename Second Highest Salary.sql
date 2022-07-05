# Write your MySQL query statement below
SELECT MAX(salary) AS SecondHighestSalary
FROM Employee
WHERE NOT salary = (SELECT MAX(salary) FROM Employee);