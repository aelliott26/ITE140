# Final Project Report

## Steps Taken to compleate this project
1. ER Diagram Creation
2. Database Implementataion
3. Pandas Extraction
4. Excel Analysis

Here is a breakdown of each step:

### ER Diagram Creation
- Before begining this project there were a few requriements to keep in mind, we had to have at least 5 entities, and they had to comply with third normal form.
- I decided to create tables representing a gym's membership system, as it would be a real world example of a database.
- I used Lucid Chart, a well known diagram creation website, to model the ER diagram.
- I created six tables gym members, personal trainers, classes, sign ups, checkins, and payments.
- I linked all the tables and checked to ensure compliance with third normal form.
- [This is a link the the diagram](https://github.com/aelliott26/ITE140/blob/main/FinalProject/ERD.png)

### Database Implementataion
- To impliment the databse I connected to our class database on postgres.
- I created a schema "Gym" to place all my tables under.
- Using my ER diagram, I replicated all the tables with create statements in a single file.
- Once I had the create statements I used Mockaroo, a mock data creation website, to fill my tables.
- [This is a link to my SQL script](https://github.com/aelliott26/ITE140/blob/main/FinalProject/Final.sql)
- I then ran the SQL script in my terminal, and created all the tables with data inside them.

### Pandas Extraction
- To extract my database and its information, I used pandas and sqlalchemy.
- I used terminal to connect and access the database through the code.
- I got my password from an environment variable I set up and then used SQL alchemy to create a connection string.
- Then I created an engine with SQL alchemy to begin running a query.
- I joined two of my tables, Members and CheckIns to create a single table with all member check in data.
- I then used padas to create a excel File based on this data.
- [This is a link to the Python code](https://github.com/aelliott26/ITE140/blob/main/FinalProject/PythonScript.py)

### Excel Analysis
- To analyse the data gathered in excel, I first linked a seperate excel sheet to the output to avoid losing progress, as everytime the python script is run, the output sheet is deleted and recreated.
- Then I used a pivot table to count the amount of times members of each different level of membership checked in. 
- I then created a graph for this same purpose with a slicer based on the day to see which level of membership had th emost people check in on a certain day.
- [This is a link to download the Excel Spreadsheet](https://github.com/aelliott26/ITE140/blob/main/FinalProject/Final_Project.xlsx)