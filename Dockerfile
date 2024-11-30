# Usa una imagen base de Python
FROM python:3.9

# Crea un directorio de trabajo
WORKDIR /app

# Copia el resto de los archivos de la aplicación
COPY . /app

# Copia el archivo de requerimientos
COPY requirements.txt /app/requirements.txt

# Instala las dependencias
RUN pip install --no-cache-dir -r requirements.txt


# Expone el puerto (por ejemplo, 5000 para Flask)
EXPOSE 5000

# Comando para ejecutar la aplicación
CMD [ "python", "backord.py"]

