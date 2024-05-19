
import sys
import win32pipe, win32file, pywintypes
PIPE_NAME = 'file_pipe'
EXIT_COMMAND = "exit"

def create_fifo(pipe_name):
    try:
        handle = win32pipe.CreateNamedPipe(
            rf'\\.\pipe\{pipe_name}',
            win32pipe.PIPE_ACCESS_DUPLEX,
            win32pipe.PIPE_TYPE_MESSAGE | win32pipe.PIPE_WAIT,
            1, 65536, 65536,
            0,
            None
        )
        return handle
    except pywintypes.error as e:
        print(f"Error creando el named pipe: {e}")
        sys.exit(1)
def main():
    create_fifo(PIPE_NAME)

    print("Servidor esperando peticiones...")

    while True:
        handle = win32pipe.CreateNamedPipe(
            rf'\\.\pipe\{PIPE_NAME}',
            win32pipe.PIPE_ACCESS_DUPLEX,
            win32pipe.PIPE_TYPE_MESSAGE | win32pipe.PIPE_WAIT,
            1, 65536, 65536,
            0,
            None
        )
        print("Esperando conexion del cliente...")
        win32pipe.ConnectNamedPipe(handle, None)

        res, filepath = win32file.ReadFile(handle, 4096)
        filepath = filepath.decode('utf-8').strip()
        print(f"Peticion recibida para el fichero: {filepath}")

        if filepath == EXIT_COMMAND:
            print("Comando de salida recibido. Cerrando el servidor...")
            win32pipe.DisconnectNamedPipe(handle)
            win32file.CloseHandle(handle)
            break

        try:
            with open(filepath, 'r') as file:
                contents = file.read()
                response = f"Contenido del fichero {filepath}:\n{contents}"
        except Exception as e:
            response = f"Error al abrir el fichero: {str(e)}"

        win32file.WriteFile(handle, response.encode('utf-8'))
        win32pipe.DisconnectNamedPipe(handle)
        win32file.CloseHandle(handle)

if __name__ == "__main__":
    main()
