# Crowdfunding ETL Project

## Step 1. DataFrame creation

For loading and transforming the data in the starting files, option 1 for using Python dictionaries was used. DataFrames with columns and datatypes were created as instructed in the provided Jupyter notebook starter code. 

This is the category dataframe ran in the Jupyter notebook.

![image](https://github.com/zhou0366/Crowdfunding_ETL/assets/153146489/48910e93-cace-443c-af28-04ad64e35bdf)

This is the sub-category dataframe ran in the Jupyter notebook.

![image](https://github.com/zhou0366/Crowdfunding_ETL/assets/153146489/a0c898af-e138-4b2b-90c7-25058052d4ac)

This is the campaign dataframe ran in the Jupyter notebook.

![image](https://github.com/zhou0366/Crowdfunding_ETL/assets/153146489/6a4d9b9b-bbd6-4bd4-9d6b-1234bd5c3e88)

This is the contacts dataframe ran the Jupyter notebook.

![image](https://github.com/zhou0366/Crowdfunding_ETL/assets/153146489/8713b53d-6a08-4caf-8085-7c86da76b8dd)

The resulting four DataFrames for campaign, category, subcategory, and contacts are saved as CSV files.

### Outputs

The four CSV files "campaign.csv", "category.csv", "subcategory.csv", and "contacts.csv" generated in the Jupyter notebooks are saved into the "Resources" folder.

## Step 2. Crowdfunding Database

The ERD created using QuickDBD is shown below. Tables "campaign" with pk "cf_id", "contacts" with pk "contact_id", "category" with pk "category_id", and "subcategory" with pk "subcategory_id" are created. As each row of the campaign table will have a contact_id, category_id, and subcategory_id, these columns will be foreign keys to the id columns of the other three tables.

![project 2 QuickDBD-export](https://github.com/zhou0366/Crowdfunding_ETL/assets/22827830/312510e5-559d-4991-9f4b-bf261d6a1ae2)

A schema is used to create the database and tables as shown in the ERD and each table is populated by importing data from CSV outputs from step 1. The category, subcategory, and contact tables are populated before the campaign table as they contain foreign keys for the campaign table. To demonstrate that the tables have been correctly created and populated, a select query was performed on each table.

![category](https://github.com/zhou0366/Crowdfunding_ETL/assets/22827830/e62fb2f3-d388-4a8f-b5c4-2d5d8c9f263e)

![subcategory](https://github.com/zhou0366/Crowdfunding_ETL/assets/22827830/dac9a156-a6a2-4949-9508-d987bea9041d)

![contacts](https://github.com/zhou0366/Crowdfunding_ETL/assets/22827830/f7e02155-5b3f-4a79-a12f-a3a0ffc8884c)

![campaign](https://github.com/zhou0366/Crowdfunding_ETL/assets/22827830/557e0a0c-17c3-407f-a491-5549faac5c02)

Then, a query is created to select all columns from all tables, where contacts, category, and subcategory information are also displayed. The query used in the image below will be saved as a SQL file alongside an exported CSV containing the results.

![combined_join](https://github.com/zhou0366/Crowdfunding_ETL/assets/22827830/ec2ac7e3-9af5-4f56-93cd-7232523cf7e6)

### Outputs

The "QuickDBD" contains the ERD sketch "project 2 QuickDBD-export.png". The database schema shown is exported as "project 2 QuickDBD-export.sql" which was then used to create the database and tables.

The "Table Screenshots" folder contains screenshots of queries executed on the tables created using the database schema and imported CSV files created during step 1. Additionally, "combined_join.png" demonstrates a query selecting all columns from all tables where contacts are joined to campaign by contact_id, category is joined to campaign by campaign_id, and subcategory is joined to campaign by subcategory_id.

The "SQL outputs" folder contains a file demonstrating the joined selection query using all four tables in "combined_join_query.sql" and the results of the query are exported as "joined_query.csv"
