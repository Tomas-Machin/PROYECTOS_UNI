import socket
import sys

host = 'localhost'  # Dirección IP del servidor
port = 65432        # Puerto de comunicación

def main():
    # Crear un socket TCP/IP
    with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
        # Conectar al servidor
        s.connect((host, port))

        #while True:
        file_path = input('Introduzca el path al fichero: ')

        if file_path == "exit":
            print("Te has desconectado del servidor")
            sys.exit(0) #break

        # Enviar el path del fichero al servidor
        s.sendall(file_path.encode())

        # Recibir la respuesta del servidor
        response = s.recv(1024).decode()
        print(response)

if __name__ == "__main__":
    main()

