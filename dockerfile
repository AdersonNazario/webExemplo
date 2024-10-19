# Use an official Python runtime as a parent image
FROM python:3.10

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Set the working directory
WORKDIR /app

# Install dependencies
COPY requirements.txt /app/
RUN pip install -r requirements.txt

# Copy the project code into the container
COPY . /app/

EXPOSE 8000

#CMD python projeto1/manage.py runserver
#CMD ["python3", "projeto1/manage.py", "runserver", "0.0.0.0:8000"]

CMD python projeto1/manage.py migrate && python projeto1/manage.py runserver 0.0.0.0:8000
