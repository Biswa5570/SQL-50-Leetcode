SELECT "Low Salary" AS Category, SUM(income < 20000) AS accounts_count
FROM Accounts
UNION
SELECT "Average Salary" Category, SUM(income >= 20000 AND income <= 50000) AS accounts_count
FROM Accounts
UNION
SELECT "High Salary" Category, SUM(income > 50000) AS accounts_count
FROM Accounts