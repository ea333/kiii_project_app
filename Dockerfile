FROM python:3.10

WORKDIR /app

COPY requirements.txt requirements.txt

RUN python -m venv venv && \
    /app/venv/bin/pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["/app/venv/bin/python", "/app/manage.py", "runserver", "0.0.0.0:8000"]
