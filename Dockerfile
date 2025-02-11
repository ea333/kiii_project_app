FROM python:3.10

WORKDIR /app

# Копирај ги сите потребни датотеки
COPY requirements.txt requirements.txt

# Инсталирај зависности директно во системот, без venv
RUN pip install --no-cache-dir -r requirements.txt

# Копирај го целиот проект
COPY . .

# Дефинирај командата за стартување на Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
