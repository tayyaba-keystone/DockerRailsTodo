# DockerRailsTodo

This project contains a Dockerized Ruby on Rails To-Do application with PostgreSQL as the database.

- Rails app and PostgreSQL run in separate Docker containers.
- Uses a Dockerfile to build the Rails app image.
- Containers are connected to enable communication between app and DB.
- Simple setup for running a Rails app with a PostgreSQL backend using Docker.

## How to run

1. Build the Rails app Docker image:  
   docker build -t dockerrailstodo .
   
2. Run PostgreSQL container:
   docker run --name pg-todo -e POSTGRES_PASSWORD=your_password -d postgres
   
4. Run Rails app container linked to PostgreSQL:
   docker run --name rails-todo --link pg-todo:postgres -p 3000:3000 -d dockerrailstodo

# Access the app at http://localhost:3000
    
   

https://github.com/user-attachments/assets/f14c425c-9465-4702-8389-dbaedc675f25
