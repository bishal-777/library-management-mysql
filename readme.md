# 📚 Library Management System — MySQL

A relational database project implementing the fundamentals of MySQL through a Library Management System. This project covers schema design, table relationships, constraints, and common SQL queries used in a real-world library context.

---

## 🗂️ Project Structure

```
library-management-mysql/
├── sql-files/          # SQL scripts (schema, data, queries)
├── er_diagram.png      # Entity-Relationship diagram
└── README.md
```

---



## 🛠️ Concepts Covered

- Database and table creation (`CREATE DATABASE`, `CREATE TABLE`)
- Primary keys, foreign keys, and constraints
- Table relationships (one-to-many, many-to-many)
- Data insertion (`INSERT INTO`)
- CRUD operations (`SELECT`, `UPDATE`, `DELETE`)
- JOINs across related tables
- Aggregate functions (`COUNT`, `SUM`, `AVG`)
- Filtering and sorting (`WHERE`, `ORDER BY`, `GROUP BY`)

---

## 🗄️ Database Schema (Overview)

The system manages the core entities of a library:

| Table        | Description                              |
|--------------|------------------------------------------|
| `books`      | Stores book details (title, author, genre, etc.) |
| `members`    | Registered library members               |
| `borrowings` | Records of which member borrowed which book |
| `authors`    | Author information linked to books       |

---

