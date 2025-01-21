import os
from sqlalchemy import create_engine
import pandas as pd

# Get password from environment variable
password = os.getenv("PGPASSWORD")

# Build the SQLAlchemy connection string
db_name = "aelliott"
user = "aelliott"
host = "dbserver.gctaa.net"
port = "5432"

connection_string = f"postgresql+psycopg://{user}:{password}@{host}:{port}/{db_name}"

# Create the SQLAlchemy engine
engine = create_engine(connection_string)

# Execute a query using Pandas
query = "select f.memberid, firstname, lastname, description, mlevel from Gym.Members f JOIN (select * from Gym.Classes y JOIN Gym.SignUps p on y.ClassID=p.ClassID) t on f.MemberID=t.MemberId limit 20;"
df = pd.read_sql_query(query, engine)

# Display or save the DataFrame
df.to_excel("output.xlsx", index=False)