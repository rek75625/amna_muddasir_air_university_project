FROM python:3.10-slim

ENV FLASK_APP=flasky.py
ENV FLASK_CONFIG=production
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY requirements requirements

RUN pip install --upgrade pip
RUN pip install -r requirements/docker.txt

COPY . .

RUN chmod +x boot.sh

EXPOSE 5000

ENTRYPOINT ["./boot.sh"]