# Use the official Python image as a base
FROM python:3.10-slim

# Set working directory inside container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY app.py ./
COPY requirements.txt ./

# Install the required packages and dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Run the script
CMD ["python", "app.py"]

# do not auto run the app, run it manually later, comment above CMD line