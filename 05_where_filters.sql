-- equal condition
SELECT * FROM teachers
WHERE salary = 50000;

-- greater than
SELECT * FROM teachers
WHERE salary > 50000;

-- BETWEEN
SELECT * FROM teachers
WHERE salary BETWEEN 48000 AND 55000;

-- LIKE
SELECT * FROM teachers
WHERE name LIKE 'R%';
