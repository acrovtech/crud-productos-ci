FROM python:3.10-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
# En este proyecto básico no hay servidor real como FastAPI o Flask,
# pero simula exponer un puerto 8000
EXPOSE 8000
CMD ["python", "crud.py"]
