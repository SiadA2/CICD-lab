FROM python:3.7-slim

WORKDIR /app

COPY . /app

RUN pip install python 

CMD ["python", "app.py"]