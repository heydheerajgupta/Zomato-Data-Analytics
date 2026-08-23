# 🍽️ Zomato Data Analytics Project

An end-to-end **Zomato Restaurant Data Analytics project** developed using **Excel, SQL, Power BI and Tableau** to analyze restaurant performance, ratings, cuisines, locations, pricing and service availability.

---

## 📌 Project Overview

This project analyzes Zomato restaurant data to identify meaningful business insights related to:

- Restaurant distribution across countries and cities
- Restaurant opening trends over time
- Restaurant ratings and rating categories
- Average cost for two
- Table booking availability
- Online delivery availability
- Popular cuisines
- Top cities by restaurant count
- India vs. Rest of World restaurant distribution
- Restaurant performance and geographical distribution

The same dataset was analyzed using multiple data analytics and visualization tools to demonstrate an end-to-end analytics workflow.

---

## 🎯 Project Objectives

The main objectives of this project are:

1. Build a data model using the available dataset tables.
2. Create a calendar table for date-based analysis.
3. Analyze restaurant counts by city and country.
4. Analyze restaurant opening trends by year, quarter and month.
5. Analyze restaurants based on average ratings.
6. Create restaurant rating buckets.
7. Convert average cost for two into USD.
8. Analyze table booking availability.
9. Analyze online delivery availability.
10. Analyze cuisines, cities and restaurant ratings.
11. Create interactive dashboards.
12. Generate business insights using multiple analytics tools.

---

## 📊 Dataset

### Dataset Name

**Zomato Dataset**

### File

`Zomato_Dataset.xlsx`

### Dataset Type

Excel Workbook

### Key Data Fields

The dataset contains restaurant-related information such as:

- Restaurant ID
- Restaurant Name
- Country Code
- City
- Address
- Locality
- Locality Verbose
- Longitude
- Latitude
- Cuisines
- Currency
- Table Booking
- Online Delivery
- Delivery Status
- Price Range
- Votes
- Average Cost for Two
- Rating
- Restaurant Opening Date

---

## 📝 Business Questions

The project addresses the following analytical questions:

### Data Modeling & Calendar

- Build a data model using the sheets in the Excel file.
- Build a calendar table using `Datekey_Opening`.
- Create Year, Month Number, Month Name and Quarter.
- Create Year-Month in `YYYY-MMM` format.
- Create Weekday Number and Weekday Name.
- Create Financial Month where April = FM1 and March = FM12.
- Create Financial Quarter based on the financial month.

### Restaurant Analysis

- Find the number of restaurants by City and Country.
- Find the number of restaurants opening by Year, Quarter and Month.
- Find the number of restaurants based on Average Rating.
- Create rating buckets and analyze restaurant counts.
- Analyze the percentage of restaurants with Table Booking.
- Analyze the percentage of restaurants with Online Delivery.
- Analyze restaurants by Cuisines.
- Analyze restaurants by City.
- Analyze restaurants by Ratings.
- Develop additional KPIs and visualizations where useful.

---

# 🛠️ Tools & Technologies

| Tool | Purpose |
|---|---|
| Microsoft Excel | Data preparation, analysis and dashboard development |
| MySQL | SQL-based data analysis and querying |
| Power BI | Data modeling, DAX, analysis and interactive dashboards |
| Tableau | Interactive visualization and dashboard development |
| GitHub | Project documentation and portfolio management |

---

# 📁 Project Structure

```text
Zomato-Data-Analytics/
│
├── 01_Raw-Data/
│   └── Zomato_Dataset.xlsx
│
├── 02_Excel/
│   ├── Excel Zomato Final.xlsx
│   └── Excel_Dashboard.png
│
├── 03_PowerBI/
│   ├── Power Bi Zomato Final.pbix
│   ├── PowerBI_Dashboard_1.png
│   └── PowerBI_Dashboard_2.png
│
├── 04_SQL/
│   ├── Zomato Dump File.sql
│   └── SQL Zomato final Project.sql
│
└── 05_Tableau/
    ├── Tableau Zomato Final.twbx
    └── Tableau_Dashboard.png
