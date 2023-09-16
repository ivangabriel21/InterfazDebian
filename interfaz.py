import subprocess
import os
from os import system
import time

def instalar():
    system("sudo apt install xfce4 -y")
    system("sudo apt install xrdp -y")
    system("sudo apt install dbus-x11 -y")
    print("Paquetes Instalado Correctamente")
    time.sleep(2)
    system("clear")
    system("sudo service xrdp start")
    laip = subprocess.check_output(["curl", "ifconfig.me"]).decode("utf-8").strip()
    print(f"Instalado y configurado exitosamente. Puedes conectarte con {laip}:3389 por RDP")

if os.geteuid() == 0:
   instalar()
else:
    print("No estás ejecutando el script como root.")
    print("Ejecuta ( sudo su )")
