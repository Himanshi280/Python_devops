FROM python:3.11-slim

WORKDIR /app
COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Run unit tests during build (optional)
RUN python -m unittest discover || true

EXPOSE 8080

CMD ["python", "app.py"]





# FROM python:3.11-slim

# WORKDIR /app
# COPY . .

# RUN python -m unittest discover

# EXPOSE 8000

# CMD ["python", "app.py"]

# FROM python:3.10.0-alpine3.15

# WORKDIR /firstApp

# COPY requirement.txt .

# RUN pip install -r requirement.txt

# COPY . .

# EXPOSE 8000

# CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
