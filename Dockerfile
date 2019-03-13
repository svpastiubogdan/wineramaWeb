FROM python:3

ENV PORT=80

EXPOSE $PORT

COPY ./winerama /app

WORKDIR /app
COPY ./requirements.txt /app
RUN pip install -r requirements.txt
