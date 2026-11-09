# Clinical Data Validation Project

This repository demonstrates data quality checks and validation processes for clinical trial datasets using multiple tools.

## Tools & Technologies Used
- **SQL:** Data validation queries (`SELECT`, `WHERE`, `GROUP BY`, `HAVING`) for error detection.
- **Python (Pandas):** Data cleaning, missing value detection, and duplicate handling.
- **Google Sheets:** Manual data inspection and baseline tracking.

## Key Validation Rules Applied
- Identified negative or illogical age entries.
- Filtered missing values (`NULL` / `None`) in vital fields like dosage.
- Detected duplicate patient records based on Unique Patient ID.

## Google Sheets Clinical Data Validation
You can view the interactive eCRF specification and patient data tracking sheet here: [Google Sheets Clinical Data Link](https://docs.google.com/spreadsheets/d/1o5Hu2Hy9414CjN0RSbVDID37_suRsHWP0-KWgYARA7g/edit?usp=sharing)
