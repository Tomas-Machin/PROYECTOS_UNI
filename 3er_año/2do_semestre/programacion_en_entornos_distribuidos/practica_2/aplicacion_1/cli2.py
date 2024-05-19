import os
import sys
import win32file, win32pipe
PIPE_NAME = 'file_pipe'


def main():
    filepath = input('Introduzca el path del fichero: ')
    try:
        handle = win32file.CreateFile(
            rf'\\.\pipe\{PIPE_NAME}',
            win32file.GENERIC_READ | win32file.GENERIC_WRITE,
            0, None,
            win32file.OPEN_EXISTING,
            0, None
        )
    except Exception as e:
        print(f"Error conectandose al named pipe: {e}")
        return

    win32file.WriteFile(handle, filepath.encode('utf-8'))
    if  filepath == "exit":
        print("Te has desconectado del servidor")
    else:
        res, response = win32file.ReadFile(handle, 4096)
        print(response.decode('utf-8'))
        win32file.CloseHandle(handle)

if __name__ == "__main__":
    main()
