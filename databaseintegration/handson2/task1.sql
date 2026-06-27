-- ============================================================
-- TASK 1: INSERT, UPDATE AND DELETE DATA
-- ============================================================

-- 1. Insert two additional students

INSERT INTO students
(first_name, last_name, email, date_of_birth, department_id, enrollment_year)
VALUES
('Rahul', 'Sharma', 'rahul.sharma@college.edu', '2003-06-15', 2, 2022),
('Anjali', 'Iyer', 'anjali.iyer@college.edu', '2004-02-18', 3, 2023);

-- Verify inserted students
SELECT * FROM students;


-- Step 17: Update the grade of student_id = 5 for course_id = 1

UPDATE enrollments
SET grade = 'B'
WHERE student_id = 5
AND course_id = 1;

-- Verify the update
SELECT *
FROM enrollments
WHERE student_id = 5
AND course_id = 1;


-- Step 18: Preview enrollments with NULL grades

SELECT *
FROM enrollments
WHERE grade IS NULL;

-- Delete enrollments with NULL grades

DELETE FROM enrollments
WHERE grade IS NULL;

-- Verify deletion
SELECT *
FROM enrollments
WHERE grade IS NULL;


-- Step 19: Verify row counts

SELECT COUNT(*) AS total_students
FROM students;

SELECT COUNT(*) AS total_departments
FROM departments;

SELECT COUNT(*) AS total_courses
FROM courses;

SELECT COUNT(*) AS total_enrollments
FROM enrollments;

SELECT COUNT(*) AS total_professors
FROM professors;
