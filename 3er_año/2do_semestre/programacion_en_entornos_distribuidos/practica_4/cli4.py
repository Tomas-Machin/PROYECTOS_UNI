import socket
import os

def main():
    socket_path = '/tmp/server_socket'

    # Crear un socket UDS
    client_socket = socket.socket(socket.AF_UNIX, socket.SOCK_STREAM)

    # Conectarse al servidor
    print(f"Conectándose a {socket_path}...")
    client_socket.connect(socket_path)

    try:
        # Esperar y recibir la respuesta del servidor
        data = client_socket.recv(1024)
        if data:
            print(f"Fecha y hora recibidas del servidor: {data.decode('utf-8')}")
    finally:
        # Cerrar el socket del cliente
        client_socket.close()

if __name__ == '__main__':
    main()

