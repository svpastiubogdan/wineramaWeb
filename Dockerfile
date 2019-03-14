FROM python:3

ENV PORT=80

EXPOSE 80

COPY ./winerama-recommender-tutorial/winerama /app

WORKDIR /app
COPY ./requirements.txt /app
RUN pip install -r requirements.txt

COPY ./entrypoint.sh /app

ENTRYPOINT ["sh", "/app/entrypoint.sh"]
