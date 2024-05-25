import unittest
import socket
import os
from datetime import datetime
import subprocess
import time

# Importamos las funciones del servidor que vamos a probar
from server import get_current_date, get_current_time, start_server

class TestServidor(unittest.TestCase):

    @classmethod
    def setUpClass(cls):
        cls.socket_path = '/tmp/test_servicio16013'
        cls.server_process = subprocess.Popen(['python3', 'server.py'])
        time.sleep(1)  # Esperar un momento para asegurarse de que el servidor esté en funcionamiento

    @classmethod
    def tearDownClass(cls):
        cls.server_process.terminate()
        cls.server_process.wait()
        if os.path.exists(cls.socket_path):
            os.remove(cls.socket_path)

    def test_get_current_date(self):
        self.assertEqual(get_current_date(), datetime.now().date().isoformat())

    def test_get_current_time(self):
        expected_time = datetime.now().strftime("%H:%M:%S")
        self.assertEqual(get_current_time(), expected_time)

    def test_server_response_fecha(self):
        with socket.socket(socket.AF_UNIX, socket.SOCK_STREAM) as client_socket:
            client_socket.connect("/tmp/servicio16013")  # (self.socket_path)
            client_socket.sendall(b'FECHA')
            response = client_socket.recv(1024).decode('utf-8')
            self.assertEqual(response, get_current_date())

    def test_server_response_hora(self):
        with socket.socket(socket.AF_UNIX, socket.SOCK_STREAM) as client_socket:
            client_socket.connect("/tmp/servicio16013")  # (self.socket_path)
            client_socket.sendall(b'HORA')
            response = client_socket.recv(1024).decode('utf-8')
            expected_time = datetime.now().strftime("%H:%M:%S")
            self.assertEqual(response, expected_time)

    def test_server_response_error(self):
        with socket.socket(socket.AF_UNIX, socket.SOCK_STREAM) as client_socket:
            client_socket.connect("/tmp/servicio16013")  # (self.socket_path)
            client_socket.sendall(b'INVALID')
            response = client_socket.recv(1024).decode('utf-8')
            self.assertEqual(response, 'ERROR')

if __name__ == '__main__':
    unittest.main()

