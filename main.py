import subprocess

# Comando para descargar Gotty
download_command = 'wget https://raw.githubusercontent.com/ivangabriel21/DependeciaDX/main/gotty'

# Comando para descomprimir Gotty
extract_command = 'tar -xzvf gotty_linux_amd64.tar.gz'

# Comando para ejecutar Gotty en el puerto 8085
gotty_command = './gotty -w --port 8080 /bin/bash'

# Ejecuta los comandos en serie
try:
    # Ejecuta el comando de descarga
    subprocess.run(download_command, shell=True, check=True)
    
    # Ejecuta el comando de descompresión
    subprocess.run(extract_command, shell=True, check=True)
    
    # Ejecuta el comando Gotty
    subprocess.Popen(gotty_command, shell=True)
    
    print('Gotty is running on port 8085')
except subprocess.CalledProcessError as e:
    print('Error:', e)
