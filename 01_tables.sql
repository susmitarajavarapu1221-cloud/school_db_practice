CREATE TABLE departments(
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(20) UNIQUE,
    location VARCHAR(30) NOT NULL,
    hod_name VARCHAR(50) NOT NULL,
    phone VARCHAR(10) UNIQUE
);

CREATE TABLE teachers(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    subject VARCHAR(30),
    salary INT
);

CREATE TABLE teacher_department(
    teacher_id INT,
    dept_id INT,
    PRIMARY KEY(teacher_id, dept_id)
);
