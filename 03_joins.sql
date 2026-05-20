-- INNER JOIN
SELECT t.name, d.dept_name
FROM teachers t
INNER JOIN departments d
ON t.id = d.dept_id;

-- LEFT JOIN
SELECT t.name, d.dept_name
FROM teachers t
LEFT JOIN departments d
ON t.id = d.dept_id;

-- RIGHT JOIN
SELECT t.name, d.dept_name
FROM teachers t
RIGHT JOIN departments d
ON t.id = d.dept_id;

-- FULL OUTER JOIN
SELECT t.name, d.dept_name
FROM teachers t
FULL OUTER JOIN departments d
ON t.id = d.dept_id;
