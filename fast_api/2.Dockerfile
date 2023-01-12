FROM python:3.9-slim-buster

WORKDIR /app

COPY requirements.txt /app

RUN python3 -m pip install -r requirements.txt --no-cache-dir

COPY main.py /app

EXPOSE 8000

CMD ["uvicorn", "main:app"]