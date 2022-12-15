# Dockerfile to build a flask app
FROM python:3.8-slim-buster
RUN apk --update add bash nano

ENV STATIC_URL /static
ENV STATIC_PATH /var/www/app/static

#WORKDIR /app

COPY ./requirements.txt /var/www/requirements.txt
RUN pip install -r /var/www/requirements.txt

#ENTRYPOINT ["python3"]
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
