```sql
-- Solution 1: Exclude rows with NULL salaries
SELECT * FROM employees WHERE department = 'Sales' AND salary > 100000 AND salary IS NOT NULL;

-- Solution 2: Include rows with NULL salaries (treat NULL as less than 100000)
SELECT * FROM employees WHERE department = 'Sales' AND (salary > 100000 OR salary IS NULL);

-- Solution 3: Include rows with NULL salaries (treat NULL as a separate category)
SELECT * FROM employees WHERE department = 'Sales' AND (salary > 100000 OR salary IS NULL) 
UNION ALL
SELECT * FROM employees WHERE department = 'Sales' AND salary IS NULL; 
```