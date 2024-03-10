# Petstore Application

## About This Project

This project is a Ruby on Rails application for managing a pet store. It allows users to create, read, update, and delete pet records. Users can sign up, log in, and manage their pet listings.

## Prerequisites

- **Ruby**:
    ```sh
    https://www.ruby-lang.org/en/downloads/
    ```

- **Rails**:
    ```sh
    https://rubyonrails.org/
    ```

- **MongoDB**:
    ```sh
    https://www.mongodb.com/try/download/community
    ```

- **Docker**:
    ```sh
    https://www.docker.com/products/docker-desktop/
    ```

## Configuration

Before running the application, ensure you have MongoDB running. If using Docker, the provided `docker-compose.yml` can be used to set up a MongoDB instance.

### Using Docker for MongoDB

1. Ensure Docker Desktop is installed and running.

2. Navigate to the project directory and start MongoDB using:
   ```sh
   docker-compose up -d
   ```

## Running the Application
- Clone the project repository to your local machine.
- Navigate to the project directory.
- Build the docker-compose:
   ```sh
   docker-compose build
   ```
- Run docker container:
   ```sh
   docker-compose up -d
   ```
- Access the application at http://0.0.0.0:3000.

## About the Application
The Petstore application provides a simple interface for managing pets. It supports the following functionalities:

- __User Authentication__: Sign up, log in, and log out.
- __Pet Management__: Users can add new pets, view existing pets, edit pet details, and delete pets.

## Application Flow
- __User Registration and Authentication__: Users must sign up and log in to manage pets.
- __Managing Pets__: Authenticated users can create new pet records, view a list of pets, edit pet details, and delete pets from the store.
