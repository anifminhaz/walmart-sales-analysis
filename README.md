# Walmart Sales Data Analysis

## Project Overview
This project involves the analysis of Walmart sales data, including data cleaning, transformation, storage in a PostgreSQL database, and analysis through SQL queries. The project demonstrates skills in data engineering, data transformation, and analytical SQL query writing.



## Technologies Used
- **Python**: For data cleaning and transformation
- **Pandas**: For data manipulation and analysis
- **PostgreSQL**: For database storage and complex queries
- **SQLAlchemy**: For database connection from Python
- **Jupyter Notebook**: For interactive code development and documentation

## Project Structure
```
walmart-sales-analysis/
├── data/
│   ├── Walmart.csv
│   └── walmart_clean_data.csv
├── notebooks/
│   └── analysis.ipynb
├── sql/
│   └── psql_queries.sql
├── .gitignore
└── README.md
```

## Data Preparation Process
1. **Data Loading**: Imported the raw Walmart sales data using Kaggle API
2. **Data Cleaning**: 
   - Removed duplicate records (51 duplicates identified and removed)
   - Handled null values (31 records with null values in unit_price and quantity)
   - Converted unit_price from string format (with $ sign) to float
3. **Feature Engineering**: 
   - Created 'total' column by multiplying unit_price and quantity
   - Standardized column names to lowercase
4. **Data Export**: Saved the cleaned data to a new CSV file
5. **Database Integration**: Loaded the cleaned data into a PostgreSQL database for analysis

## SQL Analysis
The project includes comprehensive SQL queries to answer several business questions:

1. Analysis of payment methods, transaction counts, and quantities sold
2. Identification of highest-rated product categories by branch
3. Determination of busiest days for each branch
4. Payment method analysis and quantity distributions
5. Category ratings by city (min, max, avg)
6. Profit analysis by product category
7. Preferred payment methods by branch
8. Time-of-day analysis of sales patterns
9. Year-over-year revenue comparison and performance tracking

## Key Insights
- The dataset contains 9,969 transactions after cleaning
- Products are categorized into areas like Health and Beauty, Electronic Accessories, etc.
- Analysis reveals shopping patterns across different payment methods, days, and times
- Branch performance varies significantly by category and customer ratings
- Revenue trends can be tracked and compared year-over-year

## Future Enhancements
- Implement visualization dashboard using tools like Power BI or Tableau
- Develop predictive models for sales forecasting
- Enhance the pipeline with automated scheduling using tools like Airflow
- Create branch performance scorecards with regular updates

## Getting Started

### Prerequisites
- Python 3.8+
- PostgreSQL 12+
- Required Python libraries: pandas, psycopg2, sqlalchemy

### Installation
```bash
# Clone the repository
git clone https://github.com/anifminhaz/walmart-sales-analysis.git
cd walmart-sales-analysis

# Create and activate virtual environment (optional but recommended)
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate

# Install dependencies
pip install pandas psycopg2-binary sqlalchemy jupyter
```

### Database Setup
```bash
# Create PostgreSQL database
createdb walmart_db

# Run the notebook to process data and load to database
jupyter notebook notebooks/analysis.ipynb
```

### Running SQL Queries
The file `sql/psql_queries.sql` contains all analytical queries that can be run against the loaded database.

## Contact
Your Name - [anif.cse@gmail.com](mailto:anif.cse@gmail.com)

Project Link: [https://github.com/anifminhaz/walmart-sales-analysis](https://github.com/anifminhaz/walmart-sales-analysis)

---
*This project is part of my data engineering and analysis portfolio demonstrating skills in Python, SQL, and data pipeline creation.*