import socket
import os
from datetime import datetime

def get_current_datetime():
    # Obtener la fecha y hora actual con formato internacional ISO 8601
    return datetime.now().isoformat()

def main():
    socket_path = '/tmp/server_socket'

    # Eliminar el socket si ya existe
    if os.path.exists(socket_path):
        os.remove(socket_path)

    # Crear un socket UDS
    server_socket = socket.socket(socket.AF_UNIX, socket.SOCK_STREAM)

    # Enlazar el socket a la dirección (nombre de archivo)
    server_socket.bind(socket_path)

    # Escuchar conexiones entrantes
    server_socket.listen(1)
    print(f"Esperando conexiones en {socket_path}...")

    try:
        while True:
            # Aceptar una conexión
            connection, client_address = server_socket.accept()
            try:
                # Obtener la fecha y hora actual
                current_datetime = get_current_datetime()
                
                # Enviar la fecha y hora al cliente
                connection.sendall(current_datetime.encode('utf-8'))
                print(f"Respuesta enviada: fecha y hora ->", current_datetime)
                
            finally:
                # Cerrar la conexión
                connection.close()
    
    except KeyboardInterrupt:
        print("\nServidor cerrado.")

    finally:
        # Cerrar el socket del servidor
        server_socket.close()
        os.remove(socket_path)

if __name__ == '__main__':
    main()

