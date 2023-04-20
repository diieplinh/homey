# MySQL + Flask Boilerplate Project

# Project name: Homey

1. # Description of database
Introducing Homey, the ultimate solution for managing shared living spaces with ease and grace. Our web-based application is designed to keep you and your roommates, housemates, or family in perfect harmony. Say goodbye to arguments about whose turn it is to clean the bathroom or pay the bills, and hello to a beautifully organized and connected household! With Homey, you can streamline your chores with our to-do list that comes with automated reminders, and a synced calendar that displays scheduled chores, outings, and bill payments. Plus, our shared shopping list makes it easy to decide on larger purchases as a group. But that's not all - Homey also offers smart financial tools for payment sharing, customizable budgeting, and detailed spending analytics to help you stay on top of your finances effortlessly. And our messaging platform is integrated with all of Homey's services, making it easy to communicate with your roommates, housemates, or family.

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




