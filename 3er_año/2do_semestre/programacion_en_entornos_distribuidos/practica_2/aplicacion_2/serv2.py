
import sys
import win32pipe, pywintypes
import datetime

PIPE_NAME = 'datetime_pipe'

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
    print(f"Servidor esperando conexiones en {PIPE_NAME}...")

    while True:
        # Abrir la tubería en modo escritura (bloqueante hasta que un cliente se conecte)
        with open(PIPE_NAME, 'w') as pipe:
            # Obtener la fecha y hora actual en el formato estándar internacional
            current_time = datetime.datetime.now().isoformat()
            # Escribir la fecha y hora en la tubería
            pipe.write(current_time)
            pipe.flush()

if __name__ == "__main__":
    main()
