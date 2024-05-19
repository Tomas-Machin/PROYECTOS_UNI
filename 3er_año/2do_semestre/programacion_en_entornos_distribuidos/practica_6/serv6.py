import socket

host = 'localhost'  # Dirección IP del servidor
port = 65432        # Puerto de comunicación

# Crear un socket TCP/IP
with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
    # Vincular el socket al puerto
    s.bind((host, port))
    # Escuchar conexiones entrantes
    s.listen()

    print(f"Servidor TCP en {host}:{port}")

    while True:
        print("Esperando el path del fichero...")

        # Aceptar la conexión
        conn, addr = s.accept()
        with conn:
            print('Conexión establecida desde:', addr)
            
            # Recibir datos del cliente
            file_path = conn.recv(1024).decode()

            #if file_path == "exit":
            #    print("Comando de salida recibido. Cerrando el servidor...")
            #    break

            print(f"Recibido path del fichero: {file_path}")

            try:
                # Leer el contenido del fichero
                with open(file_path, 'r') as file:
                    content = file.read()
                response = f"Contenido del fichero:\n{content}"
            
            except Exception as e:
                response = f"Error al leer el fichero: {e}"

            # Enviar la respuesta al cliente
            conn.sendall(response.encode())
            print(response)

