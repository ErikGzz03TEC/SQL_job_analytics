# Introduction
Dive into the data job market ! Focusing in data analyst roles, this project explores top-paying jobs, in-demand skills, and where high demand meets high salary in data analytics.

SQL queries?  Check them out here: [project_sql folder](/project_sql/)
# Background
This repository contains a project focused on data consultation using SQL for the analysis of job data related to the role of a Data Analyst. The goal of this project is to provide insights into various aspects of Data Analyst job positions, such as job availability, salary trends, required skills, and industry demand. This analysis can be beneficial for job seekers, career advisors, and industry analysts who are interested in understanding the current job market for Data Analysts.

Data Hails from my [SQL Course](https://www.youtube.com/watch?v=7mz73uXD9DA&t=13993s). It's packed with insights on job titles, salaries, location and essential skills. 

### The questions I wanted to answer through my SQL queries: 
1. What are the top-paying analyst jobs?
2. What skills are required for these top-paying jobs?
3. What skills are most in demand for data analyst? 
4. Which skills are associated with higher salaries? 
5. What are the most optimal skills to learn? 


# Tools I used
For my deep dive into data analyst job market, I harnessed the power of several key tools: 

- **SQL:** The backbone of my analysis, allowing me to query the database and unearth critical insights.
- **PostgreSQL:** The chosen database managment system, ideal for handling the job posting data. 
- **Visual Studio Code:** My go-to for database managment and executing SQL queries. 
- **Git & Github:** Essential for version control and sharing my SQL scripts and analysis, ensuring collaboration and project tracking. 
   
# The Analysis 
Each query for this project aimed at investigating specific aspects of the data analyst job market. Here's how I approched each question.

### 1. Top Paying Data Analyst Jobs 
To identify the highest-paying roles, I filtered data analyst positions by average yearly salary and location, focusing on remote jobs. This query highlights the high paying opportunities in the field. 

```sql
SELECT 
    job_id,
    job_title,
    job_location, 
    job_schedule_type,
    salary_year_avg,
    job_posted_date, 
    name AS company_name
FROM 
    job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE 
    job_title_short = 'Data Analyst' AND 
    salary_year_avg IS NOT NULL AND 
    job_location = 'Anywhere'
ORDER BY
    salary_year_avg DESC
LIMIT 10;
```

# KSAMKMKSMKAMK



# What I learned 
# Conclusions 