# Step 1: Use an official Python base image
FROM python:3.9-slim

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy everything from current directory to /app in container
COPY . /app

# Step 4: Install required libraries
RUN pip install --no-cache-dir numpy pandas scikit-learn

# Step 5: Set default command to run your ML script
CMD ["python", "trained.py"]
