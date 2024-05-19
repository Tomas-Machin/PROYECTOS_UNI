import socket
import sys

host = 'localhost'  # Dirección IP del servidor
port = 65432        # Puerto de comunicación

def main():
    # Crear un socket UDP
    with socket.socket(socket.AF_INET, socket.SOCK_DGRAM) as s:

        # while True:     en caso de que un mismo cliente quiera 
        #                 enviar a leer + de 1 fichero
            file_path = input('Introduzca el path al fichero: ')

            # Enviar el path del fichero al servidor
            s.sendto(file_path.encode(), (host, port))

            if file_path == "exit":
                print("Te has desconectado del servidor")
                sys.exit(0) # break -> en caso de while
            
            # Recibir la respuesta del servidor
            response, addr = s.recvfrom(1024)
            print(response.decode())

if __name__ == "__main__":
    main()

