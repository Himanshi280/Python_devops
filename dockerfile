FROM python:3.11-slim

WORKDIR /app
COPY . .

RUN python -m unittest discover

CMD ["python", "app.py"]
