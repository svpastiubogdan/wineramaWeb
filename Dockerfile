FROM python:3

ENV PORT=80

EXPOSE $PORT

COPY ./winerama /app

WORKDIR /app
COPY ./requirements.txt /app
RUN pip install -r requirements.txt

COPY ./entrypoint.sh /app

CMD ["python", "manage.py runserver 0.0.0.0:80"]
