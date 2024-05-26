import json
import math
import socket
import sys

class Server():
    # para cuando tenga clientes
    def __init__(self):
        self.base = 0
        self.height = 0
        self.side = 0
        self.radius = 0
        self.pi = 3.14

        self.host = 'localhost'
        self.port = 65432
# -----------------------------------------------------------
    def eleccion(self, figura):
        if figura == 'triangulo':
            return figura
            # commit Test 1 OK
        elif figura == 'rectangulo':
            return figura
            # commit Test 1.2 OK
        elif figura == 'circulo':
            return figura
            # commit Test 1.3 OK

    def area_triangulo(self, base, altura):
        return base * altura / 2
        # commit Test 2 OK
    def area_rectangulo(self, base, altura):
        return base * altura
        # commit Test 2.2 OK
    def area_circulo(self, radio):
        return self.pi * radio ** 2
        # commit Test 2.3 OK

    def perimetro_triangulo_isosceles(self, base, altura):
        hipotenusa = math.sqrt((base ** 2 + altura ** 2))
        return base + hipotenusa * 2
        # commit Test 3.1 OK

    def perimetro_triangulo_equilatero(self, base, altura):
        return base * 3
        # commit Test 3.1.2 OK

    def perimetro_rectangulo(self, base, lado):
        return base * 2 + lado * 2
        # commit Test 3.2 OK

    def perimetro_circulo(self, radio):
        return 2 * self.pi * radio
        # commit Test 3.3 OK
    # -----------------------------------------------------------

    def calcular_area(self, parametros):
        pass

    def main(self):
        with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
            s.bind((self.host, self.port))
            s.listen()
            print(f'Servidor activo en {self.host}:{self.port}.')
            while True:
                client_socket, client_dir = s.accept()
                print(f'El cliente {client_dir} se ha conectado al servidor TCP')
                with client_socket:
                    while True:
                        eleccion = client_socket.recv(1024).decode()
                        print(f'eleccion recibida: {eleccion}')
                        try:
                            if eleccion == 'TRIANGULO':
                                client_socket.sendall("Ha elegido la figura: TRIANGULO\n".encode())
                            elif eleccion == 'RECTANGULO':
                                client_socket.sendall("Ha elegido la figura: RECTANGULO\n".encode())
                            elif eleccion == 'CIRCULO':
                                client_socket.sendall("Ha elegido la figura: CIRCULO\n".encode())

                            opcion = client_socket.recv(1024).decode()
                            print(opcion)
                            lista = s.recv(1024).decode()
                            parametros = json.loads(lista)
                            if opcion == 'AREA':
                                client_socket.sendall("Calculando el área...\n".encode())
                                print(parametros)
                                #self.calcular_area(parametros)
                                break
                            else:
                                print('JEJEJEJE')
                        except KeyboardInterrupt:
                            print("Cerrandose...")
                            break

if __name__ == "__main__":
    servidor = Server()
    servidor.main()