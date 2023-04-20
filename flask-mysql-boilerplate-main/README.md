# MySQL + Flask Boilerplate Project

# Project name: Homey

1. # Description of database
This database is called homey, an application used for members of a household to be able to communicate with eachother
by assigning tasks, sending messages, tracking payments, setting up a shopping list and also organizing events. Whether the user
is a roommate, mom or any type of household member, homey makes it easier to keep track of household tasks and makes it easier for
members to communicate without direct confrontation. 

2. # Set up
This repo contains a boilerplate setup for spinning up 3 Docker containers: 
- A MySQL 8 container used to manage and manipulate data in the database
- A Python Flask container to implement a REST API
- A Local AppSmith Server

3. ## How to setup and start the containers
**Important** - you need Docker Desktop installed
- Clone this repository.  
- Create a file named `db_root_password.txt` in the `secrets/` folder and put inside of it the root password for MySQL. 
- Create a file named `db_password.txt` in the `secrets/` folder and put inside of it the password you want to use for the a non-root user named webapp. 
- In a terminal or command prompt, navigate to the folder with the `docker-compose.yml` file.  
- Build the images with `docker compose build`
- Start the containers with `docker compose up`.  To run in detached mode, run `docker compose up -d`. 

4. # Data Schema
- users: contains information about the household members who use the app
- tasks: contains information about the household members' tasks including datetime, who assigned it and to who
- messages: contains information about the messages between the household members who use the app
- shopping items: contains information about shopping items required by the household members
- shopping categories: contains information about the shopping categories required by the household members
- tasks categories: contains information about the tasks categories 
- events: contains information about events concerning household members who use the app
- payments: contains information about the payments between the household members who use the app
- requests: contains information about the requests betweeen household members who use the app
- payment categories: contains information about the payments categories between household members
- event attendees: contains information about the household members who are attending the event

5. # Usage
To use the database, follow these steps:

- Launch the application by running the app.py file using Python 3.
- Open a web browser and navigate to the URL http://localhost:8001.
- You can access all the above on the homepage.

6. # Link to team video : 




