FROM python:3.11-slim
ENV PYTHONUNBUFFERED=1 PYTHONDONTWRITEBYTECODE=1 PIP_NO_CACHE_DIR=1
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt && python -m playwright install --with-deps chromium
COPY eg_seller_local.py .
COPY *.txt ./
RUN mkdir -p /app/data
ENV STATE_DIR=/app/data SERVER_MODE=1
CMD ["python", "-u", "eg_seller_local.py"]
