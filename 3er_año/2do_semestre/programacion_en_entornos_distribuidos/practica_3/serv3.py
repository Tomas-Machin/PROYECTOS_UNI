import os
import time
import datetime

# Nombre del FIFO del servidor
server_fifo = '/tmp/server_fifo'

# Crear la FIFO del servidor si no existe
if not os.path.exists(server_fifo):
    os.mkfifo(server_fifo)

print("Servidor está a la espera de conexiones...")

try:
    while True:
        # Abrir la FIFO del servidor en modo lectura
        with open(server_fifo, 'r') as fifo:
            # Leer el nombre de la FIFO del cliente
            client_fifo = fifo.read().strip()
            
            if client_fifo:
                # Obtener la fecha y hora actual
                current_time = datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')
                
                # Abrir la FIFO del cliente en modo escritura
                with open(client_fifo, 'w') as cfifo:
                    # Enviar la fecha y hora al cliente
                    cfifo.write(current_time)
                
                print(f"Atendiendo a {client_fifo} con la fecha y hora: {current_time}")

except KeyboardInterrupt:
    print("\nServidor cerrado.")

finally:
    # Eliminar la FIFO del servidor al cerrar
    if os.path.exists(server_fifo):
        os.remove(server_fifo)

