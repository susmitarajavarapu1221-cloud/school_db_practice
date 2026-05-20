-- NORMALIZATION NOTES (1NF, 2NF, 3NF)

-- =========================
-- 1NF (First Normal Form)
-- =========================
-- Each column must have single value
-- No multiple values in one column

--  Bad Example
-- Ravi -> Maths, Physics (not allowed)

-- 1NF Solution
CREATE TABLE teachers_1nf(
    teacher_id INT,
    teacher_name VARCHAR(50),
    subject VARCHAR(50)
);

-- Example Data:
-- 1, Ravi, Maths
-- 1, Ravi, Physics

-- =========================
-- 2NF (Second Normal Form)
-- =========================
-- Must be in 1NF
-- No partial dependency

-- Problem:
-- teacher_id + course_id (composite key)
-- teacher_name depends only on teacher_id (not correct)

-- Solution:
CREATE TABLE teachers(
    teacher_id INT PRIMARY KEY,
    teacher_name VARCHAR(50)
);

CREATE TABLE courses(
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50)
);

CREATE TABLE teacher_course(
    teacher_id INT,
    course_id INT
);

-- =========================
-- 3NF (Third Normal Form)
-- =========================
-- Must be in 2NF
-- No transitive dependency

-- Problem:
-- teacher_id -> dept_id -> dept_name (not correct)

-- Solution:
CREATE TABLE departments(
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

CREATE TABLE teachers_final(
    teacher_id INT PRIMARY KEY,
    teacher_name VARCHAR(50),
    dept_id INT
);
