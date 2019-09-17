FROM python:3.7-slim

COPY ./requirements.txt /

RUN pip install --trusted-host pypi.python.org -r requirements.txt

COPY /app /app

EXPOSE 80
ENV FLASK_APP=app/main.py

CMD ["flask", "run", "--port=8000", "--host=0.0.0.0"]
