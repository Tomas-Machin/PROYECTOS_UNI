import unittest
import server as server
class TestServidor(unittest.TestCase):
    def setUp(self): #Escenario básico
        self.servidor = server.Server()
    def test_eleccion_triangulo(self):
        respuesta = self.servidor.eleccion('triangulo')
        self.assertEqual(respuesta, 'triangulo')
        # commit 'Test 1'

    def test_eleccion_rectangulo(self):
        respuesta = self.servidor.eleccion('rectangulo')
        self.assertEqual(respuesta, 'rectangulo')
        # commit Test 1.2
    def test_eleccion_circulo(self):
        respuesta = self.servidor.eleccion('circulo')
        self.assertEqual(respuesta, 'circulo')
        # commit Test 1.3

    def test_area_triangulo(self):
        respuesta = self.servidor.area_triangulo(3, 2)
        self.assertEqual(respuesta, 3)
        # commit Test 2
    def test_area_rectangulo(self):
        respuesta = self.servidor.area_rectangulo(3, 2)
        self.assertEqual(respuesta, 6)
        # commit Test 2.2
    def test_area_circulo(self):
        respuesta = self.servidor.area_circulo(3)
        self.assertEqual(respuesta, 28.26)
        # commit Test 2.3

    def test_perimetro_triangulo_isosceles(self):
        respuesta = self.servidor.perimetro_triangulo_isosceles(3, 4)
        self.assertEqual(respuesta, 13)
        # commit Test 3.1
    def test_perimetro_triangulo_equilatero(self):
        respuesta = self.servidor.perimetro_triangulo_equilatero(3, 4)
        self.assertEqual(respuesta, 9)
        # commit Test 3.1.2

    """def test_perimetro_triangulo_escaleno(self):
        respuesta = self.servidor.perimetro_triangulo_equilatero(3, 4, 70)
        self.assertEqual(respuesta, 9)
        # commit Test 3.1.3"""

    def test_perimetro_rectangulo(self):
        respuesta = self.servidor.perimetro_rectangulo(3, 4)
        self.assertEqual(respuesta, 14)
        # commit Test 3.2

    def test_perimetro_circulo(self):
        respuesta = self.servidor.perimetro_circulo(3)
        self.assertEqual(respuesta, 18.84)
        # commit Test 3.3

if __name__ == '__main__':
    unittest.main()