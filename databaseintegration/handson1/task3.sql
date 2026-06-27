-- ============================================================
-- TASK 3: ALTER AND EXTEND THE SCHEMA
-- ============================================================

-- 1. Add phone_number column to students table
ALTER TABLE students ADD phone_number VARCHAR(15);

-- 2. Add max_seats column to courses table
ALTER TABLE courses ADD max_seats INT DEFAULT 60;

-- 3. Add CHECK constraint for valid grades
ALTER TABLE enrollments ADD CONSTRAINT chk_grd CHECK (grade IN ('A', 'B', 'C', 'D', 'F') OR grade IS NULL);

-- 4. Rename hod_name column to head_of_dept
ALTER TABLE departments RENAME COLUMN hod_name TO head_of_dept;

-- 5: Drop phone_number column 
ALTER TABLE students DROP COLUMN phone_number;
