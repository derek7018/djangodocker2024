# Usar la imagen base de Python
FROM python:3.10

# Establecer variables de entorno
ENV PYTHONUNBUFFERED 1
ENV DJANGO_SETTINGS_MODULE=myproject.settings

# Directorio de trabajo dentro del contenedor
WORKDIR /app

# Instalar dependencias
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Copiar el código de la aplicación
COPY . /app/

# Puerto en el que se ejecutará la aplicación
EXPOSE 8000

# Comando para ejecutar la aplicación
CMD ["python3", "dockerdjango/manage.py", "runserver", "0.0.0.0:8000"]
