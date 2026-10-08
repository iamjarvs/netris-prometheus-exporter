FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app/config.py app/netris_client.py app/sim_client.py app/record.py app/enricher.py app/exporter.py ./

EXPOSE 9101

CMD ["python", "app/exporter.py"]
