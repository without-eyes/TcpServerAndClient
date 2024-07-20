CC = gcc

server: server_compile server_run clean
client:	client_compile client_run clean

.PHONY: server client
.SILENT: server client

server_compile:
	$(CC) server.c -o server

server_run:
	./server

client_compile:
	$(CC) client.c -o client

client_run:
	./client

clean:
	rm -f ./server ./client
