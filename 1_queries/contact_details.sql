SELECT name, id
FROM students 
WHERE email IS NULL
OR phone IS NULL;


--Non Gmail Students
SELECT name, id,  email, cohort_id
FROM students
WHERE email NOT LIKE '%@gmail.com'
AND phone IS NULL;

--Currently Enrolled Students
SELECT name, id, cohort_id
FROM students
WHERE end_date IS NULL
ORDER BY cohort_id;

--Github Activity
SELECT name ,email, phone
FROM students
WHERE end_date IS NOT NULL
AND github IS NULL;