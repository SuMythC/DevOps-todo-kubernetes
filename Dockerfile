FROM python:3

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Create and set the working directory
WORKDIR /app

# Copy your project files
COPY . .

# Install Django
RUN pip install django

# Run migrations
RUN python3 manage.py migrate

# Command to run your application
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
