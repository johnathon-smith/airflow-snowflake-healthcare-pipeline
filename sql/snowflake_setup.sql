-- This assumes you've already selected your role and warehouse
-- Create project database
CREATE OR REPLACE DATABASE AIRFLOW_DB;

USE DATABASE AIRFLOW_DB;

-- Create bronze, silver, and gold schemas
CREATE OR REPLACE SCHEMA BRONZE;
CREATE OR REPLACE SCHEMA SILVER;
CREATE OR REPLACE SCHEMA GOLD;