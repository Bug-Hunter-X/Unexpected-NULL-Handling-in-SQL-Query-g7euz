```sql
SELECT * FROM employees WHERE department = 'Sales' AND salary > 100000;
```
This query might return unexpected results if the `salary` column allows NULL values.  Rows where `salary` is NULL will be excluded, even if they belong to the 'Sales' department. This is because NULL is not considered greater than, less than, or equal to any other value.