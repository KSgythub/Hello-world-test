FROM python:3.10-slim-buster

WORKDIR /app

COPY src/ /app/

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8080

CMD ["python", "app.py"]
     