# Readathon2

This is a starter app for the Durango Ruby School in-class project.

## Requirements

* Postgresql

## Setup Instructions

1. Copy config/database.yml.example to config/database.yml
2. Update config/database.yml to work with your local machine
3. Create and migrate the database

    ```
    $ rake db:create db:migrate db:test:prepare
    ```

4. Run rake to make sure rspec runs successfully

    ```
    $ rake
    ```