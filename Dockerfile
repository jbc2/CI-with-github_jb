FROM alpine:3.17

RUN pip install -r requirements.txt


ENTRYPOINT ["python"]
CMD ["app.py"]
