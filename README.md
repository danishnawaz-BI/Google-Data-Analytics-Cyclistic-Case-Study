
![Logo](https://github.com/user-attachments/assets/3dece03a-fce2-453e-9e9b-d143caadc0b0)




# Google Data Analytics Capstone:Cyclistic Case Study 

## Introduction:
Cyclistic: A bike-share program that features more than 5,800 bicycles and 692 docking stations in Chicago.
The bikes are geotracked and can be unlocked from one station and can be returned to system at any station.
There are two types of cyclistic users: 
1.	Members who purchase an annual membership
2.	Casual riders who purchase single ride passes and full day passes

## Business Task:
Cyclistic’s finance analysts have concluded that annual members are much more profitable than casual riders. So, it is believed that maximizing the number of annual members will be key to future growth. Rather than creating a marketing campaign that targets all-new customers, Company’s manager believes that there is a very good chance to convert casual riders into members.
Company’s goal is to design marketing strategies aimed at converting casual riders into annual members. In order to do that, the marketing analyst team needs to better understand how annual members and casual riders use cyclistic bikes differently and is interested in analyzing the Cyclistic historical bike trip data to identify trends.
As a Junior Data Analyst, the task is to answer the following question:
How do annual members and casual riders use Cyclistic bikes differently?

## Action:
1.	Cyclistic data for year 2021 has been used for analysis and visualization purposes. [Cyclistic Trip Data](https://divvy-tripdata.s3.amazonaws.com/index.html)
2.	The data has been collected, combined, explored, cleaned and manipulated using SQL in Big Query to create a final target table.
3.	Finally, the dataset contained in the target table has been used in Tableau: A Business Intelligence Platform to create visualizations and identify trends. The link to the Tableau Story is: [Cyclistic Story](https://public.tableau.com/views/GoogleDataAnalyticsCyclisticCaseStudy_17217807654710/Cyclistic?:language=en-US&publish=yes&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)

All the steps which have been used in SQL are explained in this document below.

## 1-	Data Collection
Link to SQL Queries: [Data Collection](https://github.com/danishnawaz-BI/Google-Data-Analytics-Cyclistic-Case-Study/blob/1272e893e25114353b57f69a8172fe8311208d11/1-Data%20Collection.sql)

The monthly trip data is stored in individual Excel files. For each month in 2021, the data has been downloaded and exported into BigQuery. Subsequently, all 12 tables were combined into a single table containing the entire 2021 dataset using SQL in BigQuery.

## 2-Data Exploration 
Link to SQL Queries: [Data Exploration](https://github.com/danishnawaz-BI/Google-Data-Analytics-Cyclistic-Case-Study/blob/1272e893e25114353b57f69a8172fe8311208d11/2-Data%20Exploration.sql)

### Counting the total number of rows

The combined data for year 2021 contains 5595063 rows.

![image](https://github.com/user-attachments/assets/a72e8bb9-969f-4a21-91e4-e017a1765433)

 
### Checking the Data Types for all the columns

![image](https://github.com/user-attachments/assets/00fce579-4f09-44be-b398-d1d7a6f5ac8c)


### Checking the number of NULL values in each column

![image](https://github.com/user-attachments/assets/346070e5-1516-445d-81af-ba278fa92e7b)

Columns Start_station_name, start_station_id, End_station_name, End_station_id, End_lat, end_lng contain NULL values which will be removed in the Data Cleaning stage.

### Checking duplicate rows
There are no duplicate rows in the dataset.

![image](https://github.com/user-attachments/assets/f53b4f70-f5b3-4b12-9d75-40f511039ff6)

### Checking ride ids length for consistency 
All the ride_ids have 16 characters in length which show consistency in the data.

![image](https://github.com/user-attachments/assets/e11dcb2b-6d1f-44d3-811e-5f663812d530)

### Checking trip count by user type

![image](https://github.com/user-attachments/assets/8e8a4095-3129-440f-adde-ab200eeec4bc)

 ### Checking trip count by bike type
 
 ![image](https://github.com/user-attachments/assets/60932337-07e3-40e5-8bab-4528f0958b70)

### Checking for trip count greater than 19 hours
Trips whose duration is greater than 19 hrs and less than 5 minutes will be removed in the data cleaning stage.

![image](https://github.com/user-attachments/assets/16243c42-f5a5-4034-b60e-8e7159422a60)

### Checking for trip count less than 5 minutes in duration

![image](https://github.com/user-attachments/assets/ab311e2b-5762-42be-a258-3eae7373fee3)


## 3-Data Cleaning and Manipulation 
Links to SQL Queries: [Data Cleaning and Manipulation](https://github.com/danishnawaz-BI/Google-Data-Analytics-Cyclistic-Case-Study/blob/1272e893e25114353b57f69a8172fe8311208d11/3-Data%20Cleaning%20%26%20Manipulation.sql) & 
[Data Exploration after Cleaning](https://github.com/danishnawaz-BI/Google-Data-Analytics-Cyclistic-Case-Study/blob/1272e893e25114353b57f69a8172fe8311208d11/4-Data%20Exploration%20after%20cleaning.sql)

-	In this stage rows with NULL values have been removed.
-Column name ride_id has been replaced with trip_id.
-	Column name rideable_type has been replaced with bike_type.
-	Column name member_casual has been replaced with user_type.
-	Trip_duartion column has been converted into an INT64 data type.
-	Trip Duration, Day of Week and Month column has been added in the data using different SQL functions.
-	A final table has been produced with the relevant columns using a JOIN.
The schema and data types of the final table are:

![image](https://github.com/user-attachments/assets/f5dce7ee-25a8-47fa-97e8-1bb28d74a6c4)

### Checking NULL count in each column after cleaning the data

![image](https://github.com/user-attachments/assets/e15a206d-e804-40d1-873f-f16abd7e981e)
The final dataset does not contain any NULL values.

### Checking number of rows for the final table
The final dataset has been reduced to 3507716 rows after removing NULL values and irrelevant data.

![image](https://github.com/user-attachments/assets/9fc47330-6ce4-4fc1-8937-aa91fe9f385a)

## 4- Data Analysis and Visulization
Finally, the clean data has been exported into Tableau for insights and recommendations.
The link to Tableau Story is: [Cyclistic Story](https://public.tableau.com/views/GoogleDataAnalyticsCyclisticCaseStudy_17217807654710/Cyclistic?:language=en-US&publish=yes&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)


 




