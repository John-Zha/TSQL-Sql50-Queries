# T-SQL 50 Practice Queries

A curated collection of **45 T-SQL (SQL Server) practice queries** built around a classic relational schema (`Student`, `Course`, `Teacher`, `SC`), covering multi-table joins, conditional aggregation, window functions, set/division logic, and date/time calculations.

> **Note:** While the sample dataset comes from an educational domain, this repository is maintained to demonstrate practical **T-SQL** query authoring, structured problem decomposition, and clean repository organization.

## Repository Structure

```text
.
├── Create_Database.sql   # T-SQL script to create the database, tables, and sample data
├── questions.md          # Full list of 45 practice problems
├── Solutions/            # Individual T-SQL solution scripts for each question
└── README.md
```
## Schema Overview
Create_Database.sql initializes the sql50 database with four tables:

- Student (SId, Sname, Sage, Ssex) — Student profiles and birth dates

- Course (CId, Cname, TId) — Course catalog and instructor mapping

- Teacher (TId, Tname) — Instructor records

- SC (SId, CId, score) — Student course enrollments and scores

## Topics Covered
- Joins & Set Logic: Inner/left/self joins, NOT IN / NOT EXISTS, matching or excluding course sets

- Aggregation & Pivoting: GROUP BY, HAVING, CASE WHEN conditional aggregation, pass/score-band rates, multi-column sorting

- Window Functions: RANK(), DENSE_RANK(), ROW_NUMBER() with PARTITION BY for per-group ranking and Top-N queries

- Date & Time Functions: Year/month/day extraction, birthday age adjustments, and rolling/upcoming week & month birthday filters

## How to Run
1. Open SQL Server Management Studio (SSMS), Azure Data Studio, or VS Code (MSSQL extension) connected to a SQL Server instance.

2. Execute Create_Database.sql to create the sql50 database and populate sample records.

3. Run individual scripts inside Solutions/ against the sql50 database.

4. When working with date/week queries (e.g., current/next week), verify @@DATEFIRST and server/session date settings as needed.
