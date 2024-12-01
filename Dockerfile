# Usa una imagen base con Python
FROM python:3.9-slim

# Configura el directorio de trabajo en el contenedor
WORKDIR /app

# Copia los archivos del proyecto al contenedor
COPY . .

# Instala las dependencias desde el archivo requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Exponer el puerto que usará la app
EXPOSE 5000

# Comando para ejecutar la app
CMD ["python", "backord.py"]
