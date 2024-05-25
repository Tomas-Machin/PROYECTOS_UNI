import unittest
from codigo import Messages

class TestHelloMessage(unittest.TestCase):
    def test_hello_message(self):
        send = Messages()
        #response = send.hello_message("HELLO")
        #self.assertEqual(response, "HELLO_ACK")
        self.assertEqual(send.hello_message("HELLO"), "HELLO_ACK")

    def test_data_message(self):
        send = Messages()
        response = send.data_message("DATA example")
        self.assertEqual(response, "DATA_ACK example")

    def test_bye_message(self):
        send = Messages()
        response = send.bye_message("BYE")
        self.assertEqual(response, "BYE_ACK")

if __name__ == "__main__":
    unittest.main()

