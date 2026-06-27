-- ============================================================
-- TASK 2: NORMALIZATION ANALYSIS
-- ============================================================

-- First Normal Form (1NF)
-- The database satisfies 1NF because every table has a primary key, each column stores only single values, and there are no repeating groups or multi-valued attributes. 
-- For example, storing multiple phone numbers in a single column such as '1234567890,0987654321' would violate 1NF.

-- Second Normal Form (2NF)
-- The database satisfies 2NF because every non-key attribute is fully dependent on the primary key. In the enrollments table, attributes such as enrollment_date and grade depend entirely on the enrollment_id. 
-- There are no partial dependencies.

-- Third Normal Form (3NF)
-- The database satisfies 3NF because there are no transitive dependencies.
-- Attributes depend only on the primary key and not on other non-key attributes. For example, storing dept_name in the students table would violate 3NF because dept_name depends on department_id rather than directly on student_id.

-- Conclusion
-- The schema is properly normalized up to Third Normal Form (3NF), which reduces data redundancy, improves data integrity, and ensures efficient maintenance.
