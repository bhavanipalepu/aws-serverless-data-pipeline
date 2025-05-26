# AWS Serverless Data Pipeline Project

This project demonstrates a serverless data engineering workflow using **AWS Glue**, **Amazon S3**, and **Amazon Athena** to analyze the popular **Iris dataset**.

## Project Structure

```
aws-iris-athena-project/
    iris.csv                            # Original dataset (input to S3)
    aws_iris_project_queries.sql        # Athena SQL queries used in the project
    query_results/                      # Folder containing all output CSV files
        total_rows.csv
        top5_rows.csv
        unique_species.csv
        species_count.csv
        avg_measurements_by_species.csv
        orderby_petal_len.csv
        petal_category.csv
        max_petal_len.csv
    glue_crawler_config.png             # Screenshot of Glue crawler configuration
    glue_table_schema.png               # Screenshot of inferred table schema from Glue
    s3_folder_structure.png             # Screenshot showing folder layout in S3
    orderby_petal_len.png               # Query result screenshot (ORDER BY)
    species_count.png                   # Query result screenshot (COUNT by species)
```

## Tools Used

- **Amazon S3**: For storing the dataset and Athena query results.
- **AWS Glue Crawler**: To catalog the CSV file into a queryable table.
- **AWS Athena**: To run SQL queries on the Glue cataloged data.

## Queries Performed

- Total number of rows
- View top 5 records
- Count of unique species
- Count of records per species
- Average measurements (sepal/petal) by species
- Records with long petal lengths (sorted descending)
- Categorizing petal lengths using CASE logic
- Max petal length by species

> All SQL queries used are included in the `aws_iris_project_queries.sql` file.

## Output

Query results are saved in the `query_results/` folder in CSV format. Screenshots of AWS Glue and Athena configurations are provided for reference.

## How to Reproduce

1. Upload `iris.csv` to an S3 bucket (e.g., `raw/iris.csv`).
2. Create a Glue Crawler targeting the `raw/` folder.
3. Use Athena with the Glue Data Catalog and run queries from the `.sql` file.
4. Save outputs as CSV and organize project files as shown.

---

**Author**: Bhavani Palepu 
**Date**: May 2025
