
.PHONY: servidor cliente Limpiar setup

all: setup servidor cliente

setup:
	@echo "Creando FIFOs..."
	@test -p /tmp/server_fifo || mkfifo /tmp/server_fifo
	@test -p /tmp/client_fifo || mkfifo /tmp/client_fifo

server:
	python3 serv3.py

client:
	python3 cli3.py

clean:
	rm -f /tmp/server_fifo
	rm -f /tmp/client_fifo

