# Базовый образ (Django:python:3.9-slim)
FROM python:3.9-slim

# Рабочая директория внутри контейнера
WORKDIR /app

# Копируем файл зависимостей packages.txt
COPY requirements.txt ./

# Устанавливаем зависимости
RUN pip install -r requirements.txt

# Копируем исходный код простого приложения в образ
COPY app.py .

# ОТкрываем порт 3000
EXPOSE 3000

# Команда для запуска приложения
CMD ["python", "app.py"]
