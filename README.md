# SQL Case Study: Employees & Departments

## Overview

This project demonstrates the use of SQL queries on an `Employees` and `Departments` database. It focuses on understanding subqueries, correlated subqueries, aggregation, and comparison operators such as `ANY` and `ALL`.

The case study is designed to strengthen concepts commonly asked in exams and interviews.

---

## Database Structure

### Tables Used

* **Departments**

  * DeptID (Primary Key)
  * DeptName
  * Location

* **Employees**

  * EmpID (Primary Key)
  * FirstName
  * LastName
  * DeptID (Foreign Key)
  * Salary

---

## Objectives Covered

### T1: Employees earning more than company average

Retrieve employees whose salary is greater than the overall average salary of the organization.

---

### T2: Employees working in Delhi-based departments

Filter employees based on department location using a subquery.

---

### T3: Employees with maximum salary

Identify employees earning the highest salary in the company.

---

### T4: Employees earning more than their department average

Use a correlated subquery to compare each employee’s salary with their department’s average.

---

### T5: Highest paid employee in each department

Find top earners within every department using correlated subqueries.

---

### T6: Departments with above-average salaries

Identify departments whose average salary exceeds the company’s overall average.

---

### T7: Department average comparison using JOIN

Rewrite department-based salary comparison using JOIN instead of subqueries.

---

### T8: Second highest salary

Determine the second highest salary by excluding the maximum and selecting the next highest value.

---

### T9: Employees earning more than at least one HR employee

Use the `ANY` operator to compare salaries against a subset of employees.

---

## Key Concepts Learned

* Subqueries (Single-row and multi-row)
* Correlated subqueries
* Aggregate functions (`AVG`, `MAX`)
* GROUP BY and HAVING
* JOIN vs Subquery comparison
* Logical operators: `ANY`, `ALL`
* Query optimization thinking

---

## Important Insights

* Correlated subqueries run once per row and depend on outer query values.
* `ANY` compares with at least one value (loosest condition).
* `ALL` compares with all values (strict condition).
* Aggregation with `GROUP BY` helps in department-level analysis.
* Removing maximum value helps in finding second highest salary.

---

## Use Cases

* HR analytics
* Salary benchmarking
* Department performance analysis
* Interview and exam preparation

---

## Conclusion

This case study provides a complete understanding of SQL querying techniques using real-world scenarios. Mastering these queries helps in solving complex database problems efficiently and builds a strong foundation for advanced SQL concepts.
