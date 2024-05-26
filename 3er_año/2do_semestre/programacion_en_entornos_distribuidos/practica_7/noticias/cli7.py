
import socket
import sys
import json

# enviar el nick a ser verificado
def nick_handler(client_socket):
    nick = input('Introducta su nickname: ')
    client_socket.sendall(nick.encode('utf-8'))

# enviar noticia escrita (titulo y cuerpo) para verificar
def news_handler(title, text, client_socket):
    client_socket.sendall('ESCRIBIR'.encode('utf-8'))
    new = json.dumps((title, text))
    client_socket.sendall(new.encode('utf-8'))
    response = client_socket.recv(1024).decode('utf-8')
    if response == "Noticia subida con exito.":
        print(response)
    else:
        print(response)
        mistake = client_socket.recv(1024).decode('utf-8')
        correction = json.loads(mistake)
        correction[0] = input("Introduzca un nuevo titulo: ")
        solution = json.dumps((correction[0], correction[1]))
        client_socket.sendall(solution.encode('utf-8'))

# ver la noticia que quiere el cliente
def newspaper(client_socket):
    client_socket.sendall("RECIBIR".encode('utf-8'))
    reading = client_socket.recv(1024).decode('utf-8')
    newsList = json.loads(reading)
    print('Noticias disponibles: \n', newsList)
    choosing = input("\nElija la noticia que quiera leer (Exactamente como se muestra): ")
    print("\n")
    client_socket.sendall(choosing.encode('utf-8'))
    complete_new = client_socket.recv(1024).decode('utf-8')
    print(complete_new)

def main():
    client_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    client_socket.connect(('localhost', 5000))
    nick_handler(client_socket)
    response = client_socket.recv(1024).decode('utf-8')
    if response == "Se ha conectado exitosamente.":
        while True:
            # opciones del cliente
            decission = input("\nEscriba:\n - 'RECIBIR' si quiere recibir las noticias.\n - 'ESCRIBIR' en caso de querer escribir la noticia. \n - 'EXIT' en caso de querer desconetarse.\n")
            if decission == 'RECIBIR':
                print('1')
                newspaper(client_socket)
            if decission == 'ESCRIBIR':
                print('Escriba su noticia. \n')
                title = input("Introduzca un titulo para su noticia: ")
                text = input("Introduzca un cuerpo para la noticia: ")
                print("\n")
                news_handler(title, text, client_socket)
            if decission == 'EXIT':
                client_socket.sendall('EXIT'.encode('utf-8'))
                print("Desconectándose... \n")
                sys.exit(0)
            else:
                # se imprime despues de la segunda eleccion y se pilla
                print('Elección inválida, por favor intente de nuevo')
    else:
        print('El nickname esta ya en uso.')



if __name__ == "__main__":
    main()