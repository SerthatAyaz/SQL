UPDATE employee
SET id = 58,
    name = 'Burak Kağan KORKMAZ',
    email = 'bkagan@patika.dev'
WHERE id = 17
RETURNING *;	-- Returning is only used for displaying last updates

UPDATE employee
SET name = 'Employee X'
WHERE id > 44
RETURNING *;

UPDATE employee
SET name = 'Qualified Employee X'
WHERE name ILIKE '%x' AND birthday < '1980-01-01'
RETURNING *;

UPDATE employee
SET name = 'Apprentice Employee X',
    email = 'employee1@company.com'
WHERE email LIKE '%comsenz.com'
RETURNING *;

UPDATE employee
SET name = 'Employee Y'
WHERE id BETWEEN 15 AND 20
RETURNING *;

--Q4) Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.
DELETE FROM employee
WHERE id = 12
RETURNING *;  -- Returning is only used for displaying last deleted rows

DELETE FROM employee
WHERE id BETWEEN 37 AND 40
RETURNING *;

DELETE FROM employee
WHERE email ILIKE '%X%'
RETURNING *;

DELETE FROM employee
WHERE name LIKE '%Y'
RETURNING *;

DELETE FROM employee
WHERE birthday > '01-01-1999'
returning *;


-- Display final state of the employee table
SELECT * FROM employee;