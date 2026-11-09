-- 1. Create the clinical trials table
CREATE TABLE clinical_trials (
    patient_id INT,
    patient_name VARCHAR(50),
    age INT,
    dosage_mg INT,
    visit_date DATE
);

-- 2. Insert sample data (including intentional errors for testing)
INSERT INTO clinical_trials VALUES 
(101, 'Aysel Mammadova', 29, 50, '2026-05-10'),
(102, 'Rashad Aliyev', -5, 100, '2026-05-11'),   -- ERROR: Negative age
(103, 'Leyla Hasanova', 34, NULL, '2026-05-12'),  -- ERROR: Missing dosage (NULL)
(101, 'Aysel Mammadova', 29, 50, '2026-05-10');   -- ERROR: Duplicate record

-- 3. Data Validation Queries

-- A) Query to find invalid or illogical ages:
SELECT * FROM clinical_trials 
WHERE age <= 0 OR age > 100;

-- B) Query to find missing (NULL) dosage entries:
SELECT * FROM clinical_trials 
WHERE dosage_mg IS NULL;

-- C) Query to detect duplicate patient records:
SELECT patient_id, COUNT(*) 
FROM clinical_trials 
GROUP BY patient_id 
HAVING COUNT(*) > 1;