# Base Python Image
FROM python

# Set the working directory
WORKDIR /home/devops/devops_docker

# Update and install curl
RUN apt-get update && apt-get install -y curl

# Install essential python tools
RUN apt install -y python3-pip python3-dev build-essential libssl-dev libffi-dev python3-setuptools

# Add python3-venv for virtual environments
RUN apt install -y python3-venv

# Install Flask without cache
RUN pip install --no-cache-dir flask

# Create required directories
RUN mkdir /var/run/sshd
RUN mkdir ~/server_web

# Expose ports (22 for SSH, 5000 for Flask)
EXPOSE 22
EXPOSE 5000

# Clone the Git repository
RUN git clone -b dev  https://github.com/Anjalo18/DevOps.git

# Copy and make the script executable
COPY run_test.sh .
RUN chmod +x run_test.sh

# Default command to start the container
CMD ["sh", "-c", "./run_test.sh"]
