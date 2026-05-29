# Impact-of-Remote-and-Onsite-Work-Locations
# 🧠 Impact of Remote Work on Mental Health - Data Analysis Project

## 📌 Project Overview
This project analyzes the impact of different work models (Remote, Onsite, and Hybrid) on employee mental health, stress levels, and work-life balance. 

The primary goal is to uncover actionable insights by processing raw data using **SQL** and visualizing key performance indicators (KPIs) in **Power BI**. These insights can help HR departments and organizations optimize work environments and support employee well-being.

## 🛠️ Tools & Technologies
* **Data Processing & Analysis:** SQL (Queries, aggregations, percentage calculations, CTEs)
* **Data Visualization:** Power BI
* **Version Control:** Git & GitHub
* **Data Format:** CSV

## 📂 Repository Structure
* **`Impact_of_Remote_Work_on_Mental_Health.csv`**: The raw dataset containing detailed employee records (Age, Gender, Job Role, Hours Worked, Stress Level, Mental Health Condition, etc.).
* **`SQL_Script.sql`**: The SQL script used to clean, categorize, and aggregate the data. It includes queries to:
  * Count the number of employees by work location.
  * Calculate the percentage of stress levels (High, Medium, Low) across Remote and Onsite models.
  * Compute average working hours, work-life balance ratings, and social isolation ratings.
* **Processed Data (SQL Outputs):**
  * `Stress-level.csv`: Extracted data comparing stress level percentages between work models.
  * `Work_life_bal.csv`: Aggregated data on average hours worked, work-life balance, and social isolation by work location.
  * `Work_life_bal_onsite.csv`: Work-life balance ratings broken down by specific job roles for Onsite employees.
  * `Work_life_bal_remote.csv`: Work-life balance ratings broken down by specific job roles for Remote employees.
* **`remoteandonsite.pbix`**: The interactive Power BI Dashboard containing visual reports, slicers, and dynamic charts for deep-dive analysis.

## 💡 Key Insights & Findings
The data analysis revealed several significant trends regarding how different work environments affect employee well-being:

### 1. Stress Level Disparities (Remote vs. Onsite)
* **High Stress:** The data shows that **11.8%** of the total workforce consists of Remote employees reporting a "High" stress level, compared to **10.7%** for Onsite employees. 
* **Low & Medium Stress:** On the positive side, Remote employees make up **22.48%** of the total workforce maintaining healthy stress levels (**11.54%** Medium and **10.94%** Low).

### 2. Work-Life Balance & Working Hours
* On average, Remote employees work **39.45 hours/week** with a Work-Life Balance rating of **2.98/5.0**. 
* In contrast, Onsite employees average **39.82 hours/week** with a balance rating of **2.95/5.0**. 
* **Takeaway:** Despite working slightly shorter hours, Remote employees report a marginally better work-life balance, highlighting the value of locational flexibility.

### 3. Social Isolation
* Contrary to common assumptions regarding remote work, the Social Isolation Rating for Remote workers averages **2.96/5.0**, which is slightly lower than the Onsite employees' average of **3.01/5.0**. This indicates that the physical office environment in this dataset does not necessarily prevent feelings of isolation.

### 4. Job Role Specific Impacts
* According to the role-based breakdown, **Software Engineers** benefit the most from Remote work, scoring the highest average work-life balance (**3.23/5.0**).
* However, **Sales** professionals show the best well-being metrics when working Onsite, leading with a work-life balance score of **3.07/5.0**, likely due to the highly interactive and communicative nature of their roles.
