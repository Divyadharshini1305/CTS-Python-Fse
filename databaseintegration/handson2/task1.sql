-- ============================================================
-- TASK 1: INSERT, UPDATE AND DELETE DATA
-- ============================================================

-- 1. Insert two additional students

INSERT INTO students (first_name, last_name, email, date_of_birth, department_id, enrollment_year) VALUES ('Divya', 'Dharshini', 'divya_1@college.edu', '2005-06-15', 2, 2022), ('Anjali', 'Nambiar', 'anjali.nambiar@college.edu', '2006-01-18', 3, 2023);

-- Verify inserted students
SELECT * FROM students;


-- 2. Update the grade of student_id = 5 for course_id = 1
UPDATE enrollments SET grade = 'B' WHERE student_id = 5 AND course_id = 1;

-- Verify the update
SELECT * FROM enrollments WHERE student_id = 5 AND course_id = 1;


-- 3. Preview enrollments with NULL grades
SELECT * FROM enrollments WHERE grade IS NULL;

-- Delete enrollments with NULL grades
DELETE FROM enrollments WHERE grade IS NULL;

-- Verify deletion
SELECT * FROM enrollments WHERE grade IS NULL;


-- 4. Verify row counts
SELECT COUNT(*) AS total_students FROM students;

SELECT COUNT(*) AS total_departments FROM departments;

SELECT COUNT(*) AS total_courses FROM courses;

SELECT COUNT(*) AS total_enrollments FROM enrollments;

SELECT COUNT(*) AS total_professors FROM professors;
