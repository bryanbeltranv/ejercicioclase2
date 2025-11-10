# Usar Python 3.9 slim como imagen base
FROM python:3.9-slim

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar el archivo de requisitos
COPY requirements.txt .

# Instalar las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Copiar el código de la aplicación
COPY app.py .

# Exponer el puerto 5000
EXPOSE 5000

# Comando para ejecutar la aplicación
CMD ["python", "app.py"]
