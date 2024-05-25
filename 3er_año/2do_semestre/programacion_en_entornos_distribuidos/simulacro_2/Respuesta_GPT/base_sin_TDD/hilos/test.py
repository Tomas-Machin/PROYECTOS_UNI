import unittest
import socket
import os
from datetime import datetime
from threading import Thread
import time

# Importamos las funciones del servidor que vamos a probar
from server import get_current_date, get_current_time, start_server

class TestServidor(unittest.TestCase):

    def setUp(self):
        self.socket_path = '/tmp/test_servicio16013'
        self.server_thread = Thread(target=start_server, args=(self.socket_path,))
        self.server_thread.daemon = True
        self.server_thread.start()
        time.sleep(1)  # Esperar un momento para asegurarse de que el servidor esté en funcionamiento

    def tearDown(self):
        print("test 1")
        if os.path.exists(self.socket_path):
            os.remove(self.socket_path)

    def test_get_current_date(self):
        print("test 2")
        self.assertEqual(get_current_date(), datetime.now().date().isoformat())

    def test_get_current_time(self):
        print("test 3")
        expected_time = datetime.now().strftime("%H:%M:%S")
        self.assertEqual(get_current_time(), expected_time)

    def test_server_response_fecha(self):
        print("test 4")
        with socket.socket(socket.AF_UNIX, socket.SOCK_STREAM) as client_socket:
            client_socket.connect(self.socket_path)
            client_socket.sendall(b'FECHA')
            response = client_socket.recv(1024).decode('utf-8')
            self.assertEqual(response, get_current_date())

    def test_server_response_hora(self):
        print("test 5")
        with socket.socket(socket.AF_UNIX, socket.SOCK_STREAM) as client_socket:
            client_socket.connect(self.socket_path)
            client_socket.sendall(b'HORA')
            response = client_socket.recv(1024).decode('utf-8')
            expected_time = datetime.now().strftime("%H:%M:%S")
            self.assertEqual(response, get_current_time())

    def test_server_response_error(self):
        print("test 6")
        with socket.socket(socket.AF_UNIX, socket.SOCK_STREAM) as client_socket:
            client_socket.connect(self.socket_path)
            client_socket.sendall(b'INVALID')
            response = client_socket.recv(1024).decode('utf-8')
            self.assertEqual(response, 'ERROR')

if __name__ == '__main__':
    unittest.main()

