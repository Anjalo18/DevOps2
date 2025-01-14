# DevOps2 Project

## Description

This project uses Docker and Docker Compose to set up and run a Flask application. The environment includes a basic CI/CD process to execute tests before launching the application.

## Prerequisites

Before getting started, make sure you have the following installed on your machine:
- **Git**
- **Docker**
- **Docker Compose**

## Installation and Deployment

### Step 1: Clone the Repository

Clone the GitHub repository to your local machine:

```bash
git clone https://github.com/Anjalo18/DevOps2.git
cd DevOps2
```

### Step 2: Build the Docker Image

Build the Docker image using Docker Compose:

```bash
sudo docker compose build
```

### Step 3: Start the Container

Start the container using Docker Compose:

```bash
sudo docker compose up
```

Once the container is running, the application will be available at:
- [http://localhost:5000](http://localhost:5000) 
- Or [http://127.0.0.1:5000](http://127.0.0.1:5000)

### Step 4: Stop and Remove Containers

To stop and remove the container and associated resources, run:

```bash
sudo docker compose down
```

## Project Structure

### `Dockerfile`

The `Dockerfile` is used to:
1. Set up the Python environment.
2. Install necessary dependencies, including Flask.
3. Clone the Git repository and prepare the required directories.
4. Execute a test script before launching the application.

### `docker-compose.yml`

The Docker Compose file:
- Configures the `app` service.
- Specifies the Dockerfile to build the image.
- Maps port 5000 to access the Flask application.

### `run_test.sh`

This script:
1. Verifies that Python is installed in the container.
2. Runs a basic Python test script to validate the environment.
3. Reports whether the tests passed or failed.

## Useful Commands

- **Build the image**: `sudo docker compose build`
- **Start the container**: `sudo docker compose up`
- **Access the application**:
  - [http://localhost:5000](http://localhost:5000)
  - [http://127.0.0.1:5000](http://127.0.0.1:5000)
- **Stop and remove the container**: `sudo docker compose down`

---
