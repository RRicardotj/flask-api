FROM python:3.5.7-alpine3.9

EXPOSE 5000

WORKDIR /usr/src/app

COPY chinook.db ./
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
# RUN pip freeze

# Run the application:
COPY server.py .
CMD ["python", "server.py"]