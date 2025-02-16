# SQL NULL Handling Bug

This repository demonstrates a common issue in SQL queries involving the handling of NULL values. The `bug.sql` file contains a query that unintentionally excludes rows with NULL salaries.  The `bugSolution.sql` file provides a corrected query that addresses this issue.

## Bug Description
The original SQL query intended to retrieve all employees from the 'Sales' department with a salary greater than 100,000.  However, it fails to correctly handle NULL values in the `salary` column. This leads to an incomplete result set, omitting employees with NULL salaries from the 'Sales' department.

## Solution
The solution uses the `IS NULL` operator to explicitly check for NULL values in the `salary` column. This allows for the inclusion or exclusion of rows with NULL salaries as needed.