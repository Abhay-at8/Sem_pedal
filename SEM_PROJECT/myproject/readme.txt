Prerequisite
GOOGLE MAPS API KEY---Replace the value YOUR_API_KEY in shops.html and map.html
Python3 and mysql needs to be installed
create a database pedal in mysql with following command
create database pedal;
keep the password of root as password or modify the same in .\SEM_PROJECT\myproject\myproject\settings.py 


Optional Step 
load data (created tables and insert statement through dump file)
Run this command in SEM_PROJECT\myproject directory where 
mysql -u root -p pedal < pedal.sql



Steps to Run

1) Create a virtual environment and activate it.
    For windows run these two commands
    python -m venv venv
    .\venv\Scripts\activate

2) Install all dependencies in the virtual environment
    run the following commands in myproject directory (having the reqirement.txt)
    pip install -r requirement.txt


3) In the same directory run the following command to start server
python .\manage.py runserver

Note incase of new database some migrations need be done before running the same
which can be done by following 2 commands
python .\manage.py makemigrations
python .\manage.py migrate



