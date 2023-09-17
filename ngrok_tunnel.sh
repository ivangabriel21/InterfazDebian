#!/bin/bash

# Iniciar el túnel ngrok en segundo plano
ngrok tcp 22 -log=stdout &

# Capturar el PID del proceso ngrok
ngrok_pid=$!

# Esperar 3 horas (10800 segundos)
sleep 10800

# Detener ngrok usando su PID
kill $ngrok_pid
