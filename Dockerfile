# Use an official Python runtime as a parent image
FROM python:3.10

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the server port (adjust if needed)
EXPOSE 5000

# Command to run the MCP server
CMD ["python", "math_server.py"]
