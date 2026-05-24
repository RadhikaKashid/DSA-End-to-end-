# install mysql connector my below command in terminal
# pip install mysql-connector-python

import mysql.connector

# Create connection
conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="1234",
    database="adventureworks"
)

# Check connection
if conn.is_connected():
    print("MySQL Connected Successfully")
else: 
    print("Failed to connect the database")

# Create cursor
cursor = conn.cursor()

# Execute query
cursor.execute("SELECT DATABASE();")

# Fetch result
result = cursor.fetchone()

print("Connected Database:", result)

# Close connection
cursor.close()
conn.close()




