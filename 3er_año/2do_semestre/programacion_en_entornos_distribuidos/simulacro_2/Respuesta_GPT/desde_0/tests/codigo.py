class Messages:
    def hello_message(message):
        if message == "HELLO":
            return "HELLO_ACK"

    def data_message(message):
        if message.startswith("DATA "):
            content = message[5:]
            return f"DATA_ACK {content}"

    def bye_message(message):
        if message == "BYE":
            return "BYE_ACK"

"""
REFACTOR 1:

def process_message(message):
    commands = {
        "HELLO": "HELLO_ACK",
        "BYE": "BYE_ACK"
    }
    if message in commands:
        return commands[message]
    elif message.startswith("DATA "):
        content = message[5:]
        return f"DATA_ACK {content}"
    return "UNKNOWN"
"""
