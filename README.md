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
* **`SQL Code Remote&Onsite Project`**: The SQL script used to clean, categorize, and aggregate the data. It includes queries to:
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
<img width="1117" height="627" alt="Dashboard_Remote Onsite_PowerBI" src="https://github.com/user-attachments/assets/962e2724-c810-46bf-b706-deaffee70e25" />
<img width="1473" height="689" alt="Dashboard_Remote Onsite_GoogleSheets" src="https://github.com/user-attachments/assets/6c676d06-3419-4a70-82a1-272d3d2e1587" />


The data analysis revealed several significant trends regarding how different work environments affect employee well-being:

## 💡 Key Insights & Findings
Based on the analysis of the SQL outputs and the interactive dashboards, several significant trends emerged regarding how different work environments affect employee well-being:

### 1. Stress Level Distribution (Remote vs. Onsite)
* **Remote Workforce:** Employees working remotely report the highest proportion of "High" stress (**34.42%**), while "Low" stress accounts for the smallest segment in this group (**31.91%**).
* **Onsite Workforce:** Conversely, the onsite work environment shows a healthier distribution. "Low" stress makes up the largest proportion (**33.90%**), and "High" stress is the lowest (**32.68%**).
* **Takeaway:** Within this dataset, full-time remote work is associated with a higher concentration of high-stress levels compared to the traditional onsite environment.

### 2. Work-Life Balance (WLB) Disparities by Job Role
The impact of the work location on Work-Life Balance heavily depends on the nature of the job:
* **Independent Roles Thrive Remotely:** **Software Engineers** achieve the highest WLB score when working remotely (**3.23/5.0**), followed by Data Scientists (3.02) and Designers (3.00). However, when working onsite, the WLB score for Software Engineers drops significantly to 2.91.
* **Collaborative Roles Thrive Onsite:** Roles requiring constant interaction perform better in the office. **Sales** and **Marketing** lead the onsite WLB scores (3.07 and 3.04, respectively). Notably, when forced to work remotely, the Marketing department's WLB drops to the lowest across the entire company (**2.72/5.0**).
* **Takeaway:** Tech and design roles benefit greatly from the deep focus provided by remote work, whereas collaborative and communicative roles require the physical office environment to maintain a healthy work-life balance.
