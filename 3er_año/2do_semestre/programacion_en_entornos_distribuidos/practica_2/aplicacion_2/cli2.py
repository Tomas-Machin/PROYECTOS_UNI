
PIPE_NAME = 'datetime_pipe'

def main():
    # Abrir la tubería en modo lectura (bloqueante hasta que el servidor escriba algo)
    with open(PIPE_NAME, 'r') as pipe:
        # Leer la fecha y hora desde la tubería
        server_response = pipe.read()
        # Mostrar la respuesta en la salida estándar
        print(f"Fecha y hora recibida del servidor: {server_response}")

if __name__ == "__main__":
    main()
