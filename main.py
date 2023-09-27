import subprocess

# Comando que deseas ejecutar
comando = "echo hola"

# Ejecutar el comando usando subprocess
resultado = subprocess.run(comando, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)

# Imprimir la salida estándar y la salida de error
print("Salida estándar:")
print(resultado.stdout)

print("\nSalida de error:")
print(resultado.stderr)
