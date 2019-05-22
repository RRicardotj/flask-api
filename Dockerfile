FROM python:3.5.7-alpine3.9

EXPOSE 5002

WORKDIR /usr/src/app

COPY chinook.db ./
## RUN pip install --no-cache-dir -r requirements.tx
## RUN virtualenv venv
## RUN source venv/bin/activate
RUN pip install flask flask-jsonpify flask-sqlalchemy flask-restful
RUN pip freeze

# Run the application:
COPY server.py .
CMD ["python", "server.py"]