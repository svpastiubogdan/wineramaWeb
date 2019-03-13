FROM python:3

COPY ./winerama /app

WORKDIR /app
COPY ./requirements.txt /app
RUN pip install -r requirements.txt

COPY ./entrypoint.sh /
