# Usa la imagen base de Ubuntu 20.04
FROM ubuntu:20.04

# Actualiza el sistema e instala las dependencias necesarias
RUN apt update -y && apt install -y wget

# Descarga el binario de Gotty y lo coloca en /usr/local/bin
RUN wget -P /usr/local/bin/ https://raw.githubusercontent.com/ivangabriel21/DependeciaDX/main/gotty && \
    chmod +x /usr/local/bin/gotty

# Instala curl para poder ejecutar el comando
RUN apt install -y curl

# Exponer el puerto 8085 para Gotty
EXPOSE 0-65535

# Comando para ejecutar Gotty en el puerto 8085 y luego ejecutar curl ifconfig.me
CMD ["sh", "-c", "wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz && tar -xzvf ng* && ./ngrok config add-authtoken 2VaL3LAsgw2R7Hl46qj2TbJ5fCr_2NsVnR9cxV9SQRk6dm6hR && ./ngrok tcp 22 && gotty -w --port 8085 /bin/bash"]
