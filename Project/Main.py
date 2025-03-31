import os
from dotenv import load_dotenv
load_dotenv()
print(os.getenv('PostgreSQL_DB_1_PASSWORD'))