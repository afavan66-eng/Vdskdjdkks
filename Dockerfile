FROM python:3.11-slim

# Gerekli sistem paketlerini kur
RUN apt-get update && apt-get install -y docker.io && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY . /app

# Paketleri yükle
RUN pip install --no-cache-dir -r requirements.txt

# bot.py dosyasını çalıştır
CMD ["python", "bot.py"]
