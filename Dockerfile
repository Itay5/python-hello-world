# Use an official Python runtime as a parent image
FROM python:3.9-slim

RUN ls
# Set the working directory
WORKDIR /app

# Copy the requirements.txt into the container
COPY requirements.txt ./

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Copy the rest of the application's source code into the container
COPY . .

# Make port 8080 available to the world outside this container
EXPOSE 8080

CMD ["python", "app.py"]