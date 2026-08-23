# 🍽️ Zomato Data Analysis — Excel

An Excel-based restaurant data analysis project developed as part of an end-to-end Zomato Data Analytics project.

The project analyzes restaurant performance, ratings, cuisines, locations, pricing, table booking and online delivery availability using Microsoft Excel.

---

# 📊 Zomato Excel Dashboard

<p align="center">
  <img src="Excel_Dashboard.png" alt="Zomato Excel Dashboard" width="100%">
</p>

---

## 🎯 Project Objective

The objective of this Excel project is to transform raw Zomato restaurant data into meaningful business insights using Microsoft Excel.

The analysis focuses on:

- Restaurant distribution across countries and cities
- Restaurant opening trends over time
- Restaurant ratings and rating categories
- Average cost for two
- Table booking availability
- Online delivery availability
- Popular cuisines
- Top cities by restaurant count

---

## 📌 Dashboard KPIs

| KPI | Value |
|---|---:|
| Total Restaurants | 9,551 |
| Total Countries | 15 |
| Total Cities | 141 |
| Average Rating | 2.89 |
| Average Cost for Two (USD) | 10.09 |

---

## 📈 Dashboard Visualizations

The Excel dashboard includes:

- **Table Booking Percentage**
- **Restaurant Opening by Year**
- **Restaurants by Average Rating**
- **Online Delivery Percentage**
- **Top 5 Restaurants by City**
- **Top 10 Cuisines**

---

## 🔎 Interactive Filters

The dashboard includes interactive filters for:

- Year
- Country
- Restaurant Rating Bucket

These filters allow users to dynamically explore the restaurant analysis.

---

## 🛠️ Tool Used

**Microsoft Excel**

The project uses Excel for:

- Data Cleaning
- Data Transformation
- Data Modeling
- Calendar Table Creation
- Currency Conversion
- Data Analysis
- Pivot Tables
- Interactive Filters
- Data Visualization
- Dashboard Development

---

## 📋 Analysis Performed

### 1. Data Modeling

Built a data model using the available sheets in the Excel dataset.

### 2. Calendar Table

Created a calendar table using the `Datekey_Opening` information.

The calendar table contains:

- Year
- Month Number
- Month Full Name
- Quarter
- Year-Month
- Weekday Number
- Weekday Name
- Financial Month
- Financial Quarter

### 3. Currency Conversion

Converted the **Average Cost for Two** from local currencies into USD using the available currency information.

### 4. Restaurant Count Analysis

Analyzed the number of restaurants based on:

- City
- Country

### 5. Restaurant Opening Analysis

Analyzed restaurant openings by:

- Year
- Quarter
- Month

### 6. Restaurant Rating Analysis

Analyzed restaurant counts based on average ratings and rating categories.

### 7. Average Cost Buckets

Created price buckets based on Average Cost for Two and analyzed the number of restaurants within each bucket.

### 8. Table Booking Analysis

Calculated the percentage of restaurants that provide table booking facilities.

### 9. Online Delivery Analysis

Calculated the percentage of restaurants that provide online delivery.

### 10. Cuisine Analysis

Analyzed restaurants based on cuisines and identified the most popular cuisines.

### 11. City Analysis

Analyzed restaurant concentration across cities and identified the top cities by restaurant count.

---

## 💡 Key Insights

The Excel analysis provides insights into:

- Restaurant distribution across countries and cities
- Restaurant opening patterns over time
- Restaurant rating distribution
- Table booking availability
- Online delivery availability
- Popular cuisines
- Major restaurant cities
- Average restaurant pricing

---

## 📂 Project Files

| File | Description |
|---|---|
| `Excel Zomato Final.xlsx` | Complete Excel analysis workbook |
| `Excel_Dashboard.png` | Zomato Excel dashboard preview |
| `README.md` | Excel project documentation |

### 📊 Excel Workbook

[Open Excel Zomato Final.xlsx](Excel%20Zomato%20Final.xlsx)

---

## 📁 Project Structure

```text
Zomato-Data-Analytics
│
├── 01_Raw-Data
│   └── Zomato_Dataset.xlsx
│
├── 02_Excel
│   ├── Excel Zomato Final.xlsx
│   ├── Excel_Dashboard.png
│   └── README.md
│
├── 03_PowerBI
├── 04_SQL
├── 05_Tableau
│
└── README.md
