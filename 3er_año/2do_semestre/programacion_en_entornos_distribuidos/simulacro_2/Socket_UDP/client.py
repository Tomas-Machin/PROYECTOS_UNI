import socket
import os

def main():
    socket_path =  input('Indique la direccion del servidor (/tmp/servicio16013):')     # '/tmp/servicio16013'

    client_socket = socket.socket(socket.AF_UNIX, socket.SOCK_STREAM)

    print(f"Conectándose a {socket_path}...")
    client_socket.connect(socket_path)

    try:
        count = 0
        try:
            peticiones = int(input('Indique el número de peticiones que desea realizar (Mínimo 3):'))
            if peticiones < 3:
                print('No cumple el mínimo de peticiones.')
            else: 
                while count < peticiones:
                    request_type = input("Escriba 'FECHA' para solicitar la fecha u 'HORA' para solicitar la hora: ").strip()

                    client_socket.sendall(request_type.encode('utf-8'))

                    data = client_socket.recv(1024)
                    if data:
                        print(f"Respuesta del servidor: {data.decode('utf-8')}")        
                    count += 1
        
        except ValueError:
            print('No ha introducido un número válido.')
    finally:
        client_socket.close()


        """while count < 3:
            request_type = input("Escriba 'FECHA' para solicitar la fecha u 'HORA' para solicitar la hora: ").strip()
            
            client_socket.sendall(request_type.encode('utf-8'))

            data = client_socket.recv(1024)
            if data:
                print(f"Respuesta del servidor: {data.decode('utf-8')}")
    finally:
        client_socket.close()"""

if __name__ == '__main__':
    main()

