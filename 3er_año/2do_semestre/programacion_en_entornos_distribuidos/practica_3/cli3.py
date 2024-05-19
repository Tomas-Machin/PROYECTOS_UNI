import os
import sys

# Nombre del FIFO del servidor
server_fifo = '/tmp/server_fifo'

# Generar un nombre único para la FIFO del cliente
client_fifo = f'/tmp/client_fifo_{os.getpid()}'

# Crear la FIFO del cliente
os.mkfifo(client_fifo)

try:
    # Enviar el nombre de la FIFO del cliente al servidor
    with open(server_fifo, 'w') as fifo:
        fifo.write(client_fifo)

    # Leer la respuesta del servidor
    with open(client_fifo, 'r') as fifo:
        server_response = fifo.read().strip()
        print(f"Respuesta del servidor: {server_response}")

except Exception as e:
    print(f"Error: {e}")

finally:
    # Eliminar la FIFO del cliente
    if os.path.exists(client_fifo):
        os.remove(client_fifo)

