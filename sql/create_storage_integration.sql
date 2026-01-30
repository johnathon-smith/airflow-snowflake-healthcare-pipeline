-- Create storage integration with AWS S3
USE SCHEMA BRONZE;

CREATE OR REPLACE STORAGE INTEGRATION AIRFLOW_S3_INT
TYPE = EXTERNAL_STAGE
STORAGE_PROVIDER = 'S3'
ENABLED = TRUE
STORAGE_AWS_ROLE_ARN = 'arn:aws:iam::778277577883:role/dea-airflowsnowflakeproject-snowflake-role'
STORAGE_ALLOWED_LOCATIONS = ('s3://dea-airflowsnowflakeproject-s3-data-bucket-001/data/');

-- Describe new integration to get the AWS User ARN and External ID
DESC INTEGRATION AIRFLOW_S3_INT;