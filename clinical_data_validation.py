import pandas as pd

# 1. Create a sample clinical trials dataset (including intentional errors)
data = {
    'patient_id': [101, 102, 103, 101],
    'patient_name': ['Aysel Mammadova', 'Rashad Aliyev', 'Leyla Hasanova', 'Aysel Mammadova'],
    'age': [29, -5, 34, 29],                  # ERROR: Negative age (-5)
    'dosage_mg': [50, 100, None, 50],         # ERROR: Missing dosage (None/NULL)
    'visit_date': ['2026-05-10', '2026-05-11', '2026-05-12', '2026-05-10']
}

df = pd.DataFrame(data)

# 2. Data Validation Checks

# A) Find missing (null) dosage values:
missing_values = df[df['dosage_mg'].isnull()]

# B) Find invalid or negative ages:
invalid_ages = df[(df['age'] <= 0) | (df['age'] > 100)]

# C) Detect duplicate patient records based on ID:
duplicates = df[df.duplicated(subset=['patient_id'])]

# 3. Print the validation results
print("--- Missing Dosage Records ---")
print(missing_values)

print("\n--- Invalid Age Records ---")
print(invalid_ages)

print("\n--- Duplicate Patient Records ---")
print(duplicates)