# Imagem base para a aplicacao Flask
FROM python:3.12-alpine

WORKDIR /app

# Dependencias de compilacao para pacotes Python quando necessario
RUN apk add --no-cache gcc musl-dev python3-dev

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
RUN mkdir -p /app/logs

EXPOSE 5005
CMD ["python", "app.py"]
