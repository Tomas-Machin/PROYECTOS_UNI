import socket

host = 'localhost'  # Dirección IP del servidor
port = 65432        # Puerto de comunicación

# Crear un socket UDP
with socket.socket(socket.AF_INET, socket.SOCK_DGRAM) as s:
    # Vincular el socket al puerto
    s.bind((host, port))
    print(f"Servidor UDP en {host}:{port}")

    while True:
        print("Esperando el path del fichero...")

        # Recibir datos del cliente
        data, addr = s.recvfrom(1024)

        file_path = data.decode()

        if file_path == "exit":
            print("Comando de salida recibido. Cerrando el servidor...")
            break

        print(f"Recibido path del fichero: {file_path}")

        try:
            # Leer el contenido del fichero
            with open(file_path, 'r') as file:
                content = file.read()
            response = f"Contenido del fichero:\n{content}"
        except Exception as e:
            response = f"Error al leer el fichero: {e}"

        # Enviar la respuesta al cliente
        s.sendto(response.encode(), addr)
        print(response)

