# Usa la imagen base de Ubuntu 20.04
FROM dorowu/ubuntu-desktop-lxde-vnc

# Actualiza el sistema e instala las dependencias necesarias
RUN apt update -y; apt install -y wget

# Descarga el binario de Gotty y lo coloca en /usr/local/bin
RUN wget -P /usr/local/bin/ https://raw.githubusercontent.com/ivangabriel21/DependeciaDX/main/gotty && \
    chmod +x /usr/local/bin/gotty

# Exponer el puerto 8085 para Gotty
EXPOSE 8080:80

# Comando para ejecutar Gotty en el puerto 8085 y luego ejecutar curl ifconfig.me
CMD ["gotty", "-w", "--port", "4040", "/bin/bash"]
