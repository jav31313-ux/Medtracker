FROM kivy/buildozer:latest

# Copiar archivos del proyecto
COPY . /app
WORKDIR /app

# Instalar dependencias adicionales si es necesario
RUN pip install --upgrade pip

# Compilar APK
CMD ["buildozer", "android", "debug"]
