import os

port = 8080
while True:
    # Verificar si el puerto está en uso
    response = os.system(f"nc -zv 127.0.0.1 {port}")

    if response == 0:
        # El puerto está en uso, cambia al puerto 8089
        port = 8089
    else:
        # El puerto está disponible, inicia el servidor HTTP
        os.system(f"python3 -m http.server {port}")
        break
