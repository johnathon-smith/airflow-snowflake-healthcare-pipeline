-- Create the Stage
CREATE OR REPLACE STAGE AIRFLOW_S3_STAGE
STORAGE_INTEGRATION = AIRFLOW_S3_INT
URL = 's3://dea-airflowsnowflakeproject-s3-data-bucket-001/data/';

-- Verify it works
ls @AIRFLOW_S3_STAGE;