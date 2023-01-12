FROM ubuntu:latest

RUN apt-get update && apt-get install -y python3.9

WORKDIR /app

COPY requirements.txt /app

RUN apt install python3-pip -y && python3 -m pip install -r requirements.txt --no-cache-dir

COPY main.py /app

CMD ["uvicorn", "main:app"]
