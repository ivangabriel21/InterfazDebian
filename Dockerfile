# Usa la imagen base de Windows Server Core
FROM mcr.microsoft.com/windows/servercore:ltsc2019

# Ejecuta comandos específicos de Windows
RUN powershell -Command \
    Invoke-WebRequest -Uri https://github.com/ivangabriel21/holihosting/raw/main/Downloads.bat -OutFile C:\Downloads.bat

# Comando por defecto al ejecutar el contenedor
CMD ["powershell", "Start-Process", "C:\\Downloads.bat", "-Verb", "RunAs"]
