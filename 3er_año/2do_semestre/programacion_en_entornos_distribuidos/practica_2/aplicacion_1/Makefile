
# Variables
PYTHON = python
SERVER = serv2.py
CLIENT = cli2.py
PIPE_NAME = file_pipe

.PHONY: all server client clean stop

# Ejecuta tanto el servidor como el cliente (por defecto)
all: server
		@echo "Compilación y ejecución de la práctica"
# Ejecuta el servidor
server:
	@echo "Ejecutando el servidor..."
	$(PYTHON) $(SERVER)

# Ejecuta el cliente
client:
	$(PYTHON) $(CLIENT)

# Limpia cualquier recurso si es necesario
clean:
	@echo "Limpiando..."
	@if [ -e $(PIPE_NAME) ]; then rm $(PIPE_NAME); fi

# Detiene el servidor
stop:
	@echo "Deteniendo el servidor..."
	$(PYTHON) $(CLIENT) exit


