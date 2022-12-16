FROM alpine:3.17

WORKDIR /python-docker

COPY requirements.txt requirements.txt
RUN python pip install -r requirements.txt


ENTRYPOINT ["python"]
CMD ["app.py"]
