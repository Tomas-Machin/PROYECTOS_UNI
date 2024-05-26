
import socket
import json
import threading

clients = []
nicknames = []
# noticias de prueba
newspaper = [("prueba", "texto de la prueba"), ("ILLOJUAN", "Por favor Juan juega los DLC, como comenté en el video anterior, son buenísimos y a la gente le flipa la serie, no puede salir mal, post velada ir jugandote uno y luego otro, no se si haz hablado del tema y tal, no estoy viendo los streams ya que voy atrasado en los capítulos y quiero verlos al día, pero creo que tanto yo como muchos otros tenemos ganas de ver eso y creo que tu también lo estás disfrutando de chill, así que es el combo perfecto")]

host = 'localhost'
port = 5000

# verifica el nickname y comprueba si ay esta en uso
def client_handler(nick, client_socket):
    if nick in nicknames:
        return False
    else:
        nicknames.append(nick)
        clients.append(client_socket)
        print("Nicks: ", nicknames)
        return True

# revisa las nosticias y si coincide algun titulo pide un cambio
def news_handler(new_data, client_socket, nick):
    for paper in newspaper:
        if new_data[0] == paper[0]:
            client_socket.sendall("Noticia ya existente, cambie el título.".encode('utf-8'))
            client_socket.sendall(new_data.encode('utf-8'))
            new_title = client_socket.recv(1024).decode('utf-8')
            new_title_clear = json.loads(new_title)
            news_handler(new_title_clear, client_socket, nick)
        else:
            newspaper.append(new_data)
            client_socket.sendall("Noticia subida con exito.\n".encode('utf-8'))
            #print(f'El usuario {nick} ha subido una noticia.\n')
            #broadcast(f'El usuario {nick} ha subido una noticia.', client_socket)

# imprime la lista de la noticia que pide el cliente
def show_newspaper(client_socket):
    headlines = []
    for title in newspaper:
        headlines.append(title[0])
    newsList = json.dumps(headlines)
    client_socket.sendall(newsList.encode('utf-8'))
    election = client_socket.recv(1024).decode('utf-8')
    for title in newspaper:
        if title[0] == election:
            client_socket.sendall(title[1].encode('utf-8'))

# envia mensajes a todos los clientes conectados (NO FUNCIONA)
def broadcast(broadcast,client_socket):
    for person in clients:
        try:
            person.sendall(broadcast.encode('utf-8'))
        except Exception as e:
            print(f'Error al enviar mensaje a un cliente: {e}')

# Manejo del cliente
def people(client_socket, client_address):
    try:
        # Verificar nick
        nick = client_socket.recv(1024).decode('utf-8')
        if client_handler(nick, client_socket):
            print(f'{nick} se conectó al servidor')
            client_socket.sendall("Se ha conectado exitosamente.".encode('utf-8'))
        else:
            client_socket.sendall("Su nick es inválido, se ha rechazado la conexion".encode('utf-8'))

        while True:
            # Opciones del cliente
            direction = client_socket.recv(1024).decode('utf-8')
            if direction == 'ESCRIBIR':
                new = client_socket.recv(1024).decode('utf-8')
                new_data = json.loads(new)
                news_handler(new_data, client_socket, nick)
                #broadcast(f'¡{nick} ha publicado una nueva noticia!', client_socket)

            elif direction == 'RECIBIR':
                show_newspaper(client_socket)

            elif direction == 'EXIT':
                print(f'El usuario {nick} abandonó el servidor')
                clients.remove(client_socket)
                nicknames.remove(nick)
                print("Nicks: ", nicknames)
                #break

    except Exception as e:
        print(f'Error en la conexión con {client_address}: {e}')

def main():
    # Establecer servidor
    server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    server_socket.bind((host, port))
    server_socket.listen(5)  # Escuchar hasta 5 conexiones simultáneas
    print('Servidor escuchando en puerto', port)

    while True:
        try:
            # Aceptar conexiones de clientes
            client_socket, client_address = server_socket.accept()
            client_thread = threading.Thread(target=people, args=(client_socket, client_address))
            client_thread.start()
        except Exception as e:
            print(f'Error en la aceptación de conexión: {e}')


if __name__ == "__main__":
    main()



# CODIGO ANTES DE LOS HILOS
"""
def main():
    # establecer servidor
    server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    server_socket.bind((host, port))
    server_socket.listen(1)
    print('Servidor escuchando en puerto', port)

    while True:
        try:
            # aceptar conexiones de clientes
            client_socket, client_address = server_socket.accept()
            client_thread = threading.Thread(target=handle_client, args=(client_socket, client_address))
            client_thread.start()
            # verificar nick
            nick = client_socket.recv(1024).decode('utf-8')
            if client_handler(nick, client_address) == True:
                print(f'{nick} se conectó al servidor')
                client_socket.sendall("Se ha conectado exitosamente.".encode('utf-8'))
            else:
                client_socket.sendall("Su nick es inválido, se ha rechazado la conexion".encode('utf-8'))

            # opciones del cliente
            direction = client_socket.recv(1024).decode('utf-8')
            if direction == 'ESCRIBIR':
                new = client_socket.recv(1024).decode('utf-8')
                new_data = json.loads(new)
                news_handler(new_data, client_socket, nick)
                broadcast(f'¡{nick} ha publicado una nueva noticia!')

            elif direction == 'RECIBIR':
                show_newspaper(client_socket)

            elif direction == 'EXIT':
                print(f'El usuario {nick} abandonó el servidor')
                clients.remove(client_address)
                nicknames.remove(nick)
                print("Nicks: ", nicknames)

        except Exception as e:
            print(f'Error en la conexión: {e}')
            print("")

        #except KeyboardInterrupt:
                #print("El servidor se ha cerrado.")
                #for person in clients:
                    #person.client_socket.close()
"""