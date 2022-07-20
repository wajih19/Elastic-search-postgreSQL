# Setting up elastic search using pgsync in docker

To run the project, open it in the code editor and run the command docker-compose up -d in the terminal. 
There will be 5 containers in docker that should be running.

Database:
I have created a sample database of books in the populate.sql file. The schema of which is defined in schema.json

Containers:
All the coontainers are defined in the docker-compose.yml file.

Problem:

The issue is that there are some logical errors in database queries in populate.sql file. If I am making changes to that in the code editor ,they are not reflected 
in the containers in docker. Due to this the database container is exited , rest of the other containers are working fine.
