# 🚕 Uber Trip Analysis Dashboard

A data-driven Power BI dashboard analyzing over **100,000+ Uber trip records** from June 1–20, 2024. The project uncovers actionable insights across time, location, and trip-level dimensions to support business decisions around pricing, driver allocation, and operational performance.

---

## 📌 Project Objective

The goal of this project is to explore Uber trip data and generate meaningful business insights that help improve service efficiency, understand customer behavior, and guide strategic decision-making. The dashboard was built to be modular and scalable for future updates like fraud analysis and driver-level performance metrics.

---

## 🧾 Dataset Overview

- **Trip Dataset**: Includes fields like `Trip ID`, `Pickup/Dropoff Zone`, `Fare Amount`, `Trip Distance`, `Vehicle Type`, and `Trip Time`.
- **Location Dataset**: Maps location IDs to corresponding zones and boroughs.
- **Time Period Covered**: June 1 to June 20, 2024
- **Rows**: 100,000+

---

## 📊 Dashboard Structure

### Page1️⃣ Overview Analysis
- **Key KPIs**: Total Trips, Revenue, Average Fare, Trip Duration
- **Visuals**: Donut charts, bar charts, card visuals
- **Filters**: Vehicle type, pickup zone
- **Insights**:
  - Central zones drive the most revenue.
  - Sedan is the most used vehicle.
  - Most trips are under 15 mins and occur in the afternoon.
  - Helps with zone-based driver allocation and peak-hour optimization.
![image](https://github.com/user-attachments/assets/12e0ab0a-2c40-4c22-ade7-173a8dc1cd6b)

---

### Page2️⃣ Time-Based Analysis
- **KPIs**: Trips by hour, day of the week, and AM/PM split
- **Visuals**: Heatmap, stacked bars, line charts
- **Filters**: Weekday vs Weekend
- **Insights**:
  - Peak hours around 3 PM.
  - Weekdays are busier than weekends.
  - Guides time-based promo campaigns and driver shift planning.
  - ![image](https://github.com/user-attachments/assets/20f76093-005c-40e0-a97b-1569719155fa)


---

### 3️⃣ Driver & Trip Details
- **Visuals**: Tabular report showing trip-level data (fare, distance, passengers)
- **Purpose**:
  - A clean, backend-style view to inspect raw trip records.
  - Helps in quality monitoring, fare validation, and data transparency.
- **Future Scope**:
  - Add revenue per driver
  - Highlight anomalies for fraud checks
  - Vehicle performance summaries
  - ![image](https://github.com/user-attachments/assets/859f892b-de39-4e22-baaa-5aa956f5ceab)


---

## 🧠 Key Concepts & Tools Used

- **Power BI** for dashboard building and interactivity
- **DAX** for calculated columns and custom KPIs
- **Data Modeling** for linking trip and location tables
- **Data Cleaning** in Power Query (removed nulls, filtered outliers)
- Future-ready: planned SQL integration using **Google BigQuery**

---

## 💼 Business Impact

This dashboard can assist Uber’s ops and analytics teams in:
- Improving driver allocation based on location & time patterns
- Optimizing service availability during high-demand hours
- Identifying revenue opportunities across vehicle types
- Laying the groundwork for ML-based forecasting or fraud detection

---

## 🔗 Portfolio & Resume Use

This project is included in my [Data Analytics Portfolio](https://www.notion.so/Welcome-to-My-Data-Analyst-Business-Analyst-Portfolio-20f713f96d258039b473cee439190970) and resume to demonstrate skills in:
- Real-world dataset analysis
- Business-focused storytelling
- Dashboard design and data visualization

---

## 📌 Future Enhancements

- Integrate SQL layer for query-based insights using BigQuery
- Add fraud detection logic based on trip anomalies
- Expand to include customer segmentation and loyalty trends
