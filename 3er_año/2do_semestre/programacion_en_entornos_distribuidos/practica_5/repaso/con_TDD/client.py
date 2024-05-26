import socket
import json

class client():
    def __init__(self):
        self.host = 'localhost'
        self.port = 65432

    def main(self):
        with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
            s.connect((self.host, self.port))
            print(f'Te has conectado al servidor {self.host} : {self.port}')
            #while True:
            eleccion = input("Elija una figura que quiera tratar:\n - TRIANGULO.\n - RECTANGULO.\n - CIRCULO.\n")
            s.sendall(eleccion.encode())
            if eleccion == 'TRIANGULO':
                respuesta = s.recv(1024).decode()
                print(respuesta)
            elif eleccion == 'RECTANGULO':
                respuesta = s.recv(1024).decode()
                print(respuesta)
            elif eleccion == 'CIRCULO':
                respuesta = s.recv(1024).decode()
                print(respuesta)

            opcion = input("Elija lo que quiere calcular:\n - AREA.\n - PERIMETRO.\n")
            s.sendall(opcion.encode())
            if eleccion == 'TRIANGULO':
                tipo = input('Elije el tipo de triangulo:\n - EQUILATERO.\n - ISOSCELES.\n:')
                base = input('Indique la base del triangulo: ')
                altura = input('Indique la altura del triangulo: ')
                tri = json.dumps((tipo, base, altura))
                s.sendall(tri.encode())
            elif eleccion == 'RECTANGULO':
                base = input('Indique la base del rectangulo: ')
                lado = input('Indique el lado del rectangulo: ')
                rect = json.dumps((base, lado))
                s.sendall(rect.encode())
            elif eleccion == 'CIRCULO':
                radio = input('Indique el radio del circulo: ')
                s.sendall(radio.encode())

            print(s.recv(1024).decode())



if __name__ == "__main__":
    cliente = client()
    cliente.main()

