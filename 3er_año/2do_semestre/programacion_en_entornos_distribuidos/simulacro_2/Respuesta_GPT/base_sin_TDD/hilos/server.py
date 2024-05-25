import socket
import os
from datetime import datetime

def get_current_date():
    return datetime.now().date().isoformat()

def get_current_time():
    return datetime.now().strftime("%H:%M:%S")  # .time().isoformat()

def start_server(socket_path):
    if os.path.exists(socket_path):
        os.remove(socket_path)

    server_socket = socket.socket(socket.AF_UNIX, socket.SOCK_STREAM)
    server_socket.bind(socket_path)
    server_socket.listen(1)
    print(f"Esperando conexiones en {socket_path}...")

    try:
        while True:
            connection, client_address = server_socket.accept()
            try:
                while True:
                    request = connection.recv(1024).decode('utf-8')
                    if not request:
                        break

                    if request == 'FECHA':
                        response = get_current_date()
                    elif request == 'HORA':
                        response = get_current_time()
                    else:
                        response = 'ERROR'

                    connection.sendall(response.encode('utf-8'))
                    print(f"Solicitud recibida: {request}, Respuesta enviada: {response}")

            except Exception as e:
                print(f"Error al manejar la solicitud: {e}")
            finally:
                connection.close()

    except KeyboardInterrupt:
        print("\nServidor cerrado.")
    finally:
        server_socket.close()
        if os.path.exists(socket_path):
            os.remove(socket_path)

if __name__ == '__main__':
    start_server('/tmp/servicio16013')

