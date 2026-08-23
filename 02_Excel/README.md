# 📊 Zomato Analysis — Excel

An end-to-end **Zomato Restaurant Data Analysis project developed using Microsoft Excel** to analyze restaurant distribution, ratings, cuisines, pricing, locations, and service availability.

---

## 🎯 Project Objective

The objective of this Excel analysis is to transform Zomato restaurant data into meaningful business insights using data cleaning, data modeling, calculations, Pivot Tables, charts, and an interactive dashboard.

The analysis focuses on:

- Restaurant distribution by country and city
- Restaurant opening trends over time
- Restaurant ratings
- Average cost for two
- Table booking availability
- Online delivery availability
- Popular cuisines
- Restaurant pricing
- City-wise restaurant distribution

---

## 🗂️ Dataset

The project uses the Zomato restaurant dataset containing information related to:

- Restaurant ID
- Restaurant Name
- Country
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
- Is Delivering Now
- Switch to Order Menu
- Price Range
- Votes
- Average Cost for Two
- Rating
- Restaurant Opening Date

The original dataset is available in the:

**`01_Raw-Data`** folder.

---

## 🛠️ Tools & Techniques

| Tool / Technique | Purpose |
|---|---|
| Microsoft Excel | Data analysis and dashboard development |
| Power Query | Data cleaning and transformation |
| Data Model | Data modeling |
| Pivot Tables | Data aggregation and analysis |
| Pivot Charts | Data visualization |
| Slicers | Interactive filtering |
| Calculated Columns | Data transformation |
| Calendar Table | Date-based analysis |

---

## 🔄 Data Preparation

The dataset was prepared and transformed in Excel before performing the analysis.

### Major preparation activities

1. Data cleaning
2. Data transformation
3. Data modeling
4. Calendar table creation
5. Date-based calculations
6. Currency conversion
7. Restaurant rating categorization
8. Average price bucketing
9. Restaurant service analysis

---

## 📅 Calendar Table

A Calendar Table was created using the restaurant opening date.

The Calendar Table contains:

- Year
- Month Number
- Month Full Name
- Quarter
- Year-Month
- Weekday Number
- Weekday Name
- Financial Month
- Financial Quarter

### Financial Calendar

The financial year was structured as:

**April = FM1 → March = FM12**

Financial quarters were created based on the financial month.

---

## 💱 Currency Conversion

The original **Average Cost for Two** values were provided in different local currencies.

The values were converted into **USD** to allow consistent comparison and analysis across countries.

### Dashboard KPI

**Average Cost for Two (USD): 10.09**

---

# 📊 Key Performance Indicators

| KPI | Value |
|---|---:|
| Total Restaurants | 9,551 |
| Total Countries | 15 |
| Total Cities | 141 |
| Average Rating | 2.89 |
| Average Cost for Two (USD) | 10.09 |

---

# 📈 Analysis Performed

## 1. Restaurant Count by City and Country

Analyzed the number of restaurants across different countries and cities to understand restaurant distribution.

---

## 2. Restaurant Opening by Year

Analyzed restaurant openings by year to identify restaurant growth and opening trends over time.

---

## 3. Restaurant Rating Analysis

Restaurants were categorized into rating buckets:

- Average (1–2)
- Good (2–3)
- Very Good (3–4)
- Excellent (4–5)

---

## 4. Average Price Analysis

Restaurants were grouped into price buckets to understand how restaurants are distributed across different price ranges.

---

## 5. Table Booking Analysis

Analyzed the percentage of restaurants that provide table booking facilities.

---

## 6. Online Delivery Analysis

Analyzed the percentage of restaurants that provide online delivery.

---

## 7. Cuisine Analysis

Analyzed restaurant counts by cuisine and identified the most popular cuisines.

---

## 8. City Analysis

Identified the cities with the highest number of restaurants.

---

# 📊 Excel Dashboard

The Excel dashboard provides an interactive summary of the Zomato restaurant analysis.

### Dashboard KPIs

- Total Restaurants
- Total Countries
- Total Cities
- Average Rating
- Average Cost for Two (USD)

### Dashboard Visualizations

- Table Booking Percentage
- Restaurant Opening by Year
- Restaurants by Average Rating
- Online Delivery Percentage
- Top 5 Restaurants by City
- Top 10 Cuisines

### Interactive Filters

- Year
- Country
- Restaurant Rating Bucket

---

# 🖼️ Dashboard Preview

<p align="center">
  <img src="https://raw.githubusercontent.com/hey dheerajgupta/Zomato-Data-Analytics/main/02_Excel/Excel_Dashboard.png" alt="Zomato Excel Dashboard" width="100%">
</p>

---

## 📌 Dashboard Highlights

The dashboard provides a visual overview of:

- **9,551 total restaurants**
- **15 countries**
- **141 cities**
- **2.89 average rating**
- **10.09 average cost for two in USD**
- Table booking availability
- Online delivery availability
- Restaurant opening trends
- Rating distribution
- Top restaurant cities
- Top cuisines

---

# 💡 Key Insights

The Excel analysis provides insights into:

- Restaurant distribution across countries and cities
- Restaurant opening trends over time
- Restaurant rating distribution
- Table booking availability
- Online delivery availability
- Popular cuisines
- Restaurant pricing patterns
- Major restaurant markets

---

# 📁 Project Files

| File | Description |
|---|---|
| `Excel_Zomato Final.xlsx` | Complete Excel analysis and dashboard |
| `Excel_Dashboard.png` | Dashboard preview image |
| `README.md` | Excel project documentation |

---

# 🔄 Excel Analysis Workflow

```text
Raw Zomato Data
       ↓
Data Cleaning
       ↓
Data Transformation
       ↓
Data Modeling
       ↓
Calendar Table
       ↓
Currency Conversion
       ↓
Data Analysis
       ↓
Pivot Tables & Charts
       ↓
Interactive Dashboard
       ↓
Business Insights
