-- PRIMARY KEY
-- used to uniquely identify each record

CREATE TABLE teachers(
    id INT PRIMARY KEY
);

CREATE TABLE departments(
    dept_id INT PRIMARY KEY
);

-- UNIQUE
-- used to avoid duplicate values

CREATE TABLE departments_unique(
    dept_name VARCHAR(20) UNIQUE,
    phone VARCHAR(10) UNIQUE
);

-- NOT NULL
-- ensures value must be provided

CREATE TABLE departments_notnull(
    location VARCHAR(30) NOT NULL,
    hod_name VARCHAR(50) NOT NULL
);

-- FOREIGN KEY
-- used to connect two tables

CREATE TABLE teachers_fk(
    id INT PRIMARY KEY,
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);
