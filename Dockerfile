# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Run the command to install any needed packages specified in requirements.txt
# If your script requires any external libraries, make sure to include a requirements.txt file
# and uncomment the next line.
# RUN pip install --no-cache-dir -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME World

# Run read_pickle.py when the container launches
CMD ["python", "./predictor.py", "model.pkl"]
