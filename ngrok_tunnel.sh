#!/bin/bash

# Iniciar el túnel ngrok en segundo plano para el puerto 22 (SSH)
ngrok tcp 22 &

# Capturar el PID del proceso ngrok
ngrok_pid=$!

# Esperar 3 horas (10800 segundos)
sleep 10800

# Detener ngrok usando su PID
kill $ngrok_pid
