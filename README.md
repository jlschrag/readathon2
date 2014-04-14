# Readathon2

This is a starter app for the Durango Ruby School in-class project.

## Requirements

* Postgresql

## Setup Instructions

1. Copy config/database.example.yml to config/database.yml
2. Update config/database.yml to work with your local machine
3. Create and migrate the database

    ```
    $ rake db:create db:migrate
    ```