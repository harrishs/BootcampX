-- students in cohort
SELECT id, name
FROM students
WHERE cohort_id = 1
ORDER BY name;

-- total students in cohort
SELECT count(id)
FROM students
WHERE cohort_id IN (1,2,3);

-- contct details
SELECT name, id, cohort_id
FROM students
WHERE email is NULL
  OR phone IS NULL;

-- no gmail
SELECT name, id, email, cohort_id
FROM students
WHERE email NOT LIKE '%gmail.com'
  AND phone IS NULL;

-- Currently enrolled
SELECT name, id, cohort_id
FROM students
WHERE end_date IS NULL
ORDER BY cohort_id;

-- github
SELECT name, email, phone
FROM students
WHERE github IS NULL
  AND end_date IS NOT NULL;
