# UseCaseHub 
## Overview
This project demonstrates a collection of data pipeline use cases designed to showcase common patterns in data processing, transformation, and enrichment.
Each use case highlights a specific scenario—such as filtering, aggregating, deduplicating, or restructuring data—and provides an example SQL job that implements the logic.
The pipelines follow a general pattern:
- Read data from a raw source table
- Apply a transformation (e.g., window functions, aggregations, filtering rules)
- Write the processed output to a target table for downstream use
This structure makes it easy to extend the repository with additional use cases, each demonstrating a different data engineering technique.

## Case 1 : Bank transactions
## Purpose:
This project demonstrates a data pipeline use case focused on extracting the latest daily bank transactions from a raw source table.
The pipeline reads data from bank_transactions, computes the last transaction per day, and loads the result into a new table zdc_bank_transactions.
## Job Description
### Job Name: 
Job_001_bank_transactions.sql
### Job Schema: 
job_001_bank_transactions_schema.sql

## Case 2 : Distance Traveled
## Purpose:
This project demonstrates a data pipeline use case focused on extracting the distance traveled by each user in descending order.
## Job Description
### Job Name: 
Job_002_distance_travel.sql
### Job Schema: 
job_002_distance_travel_schema.sql

## Case 3 : Employee Salaries
## Purpose:
This project demonstrates a data pipeline use case focused on selecting the top 3 departments with at least ten employees and rank them according to the percentage of their employees making over 100K in salary.
## Job Description
### Job Name: 
job_003_employee_salaries.sql
### Job Schema: 
job_003_employee_salaries.sql