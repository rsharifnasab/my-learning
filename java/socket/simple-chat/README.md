## simple client server program with Java

this is an chat application

### in server-side

1. compile server program:

   ```bash
   javac server/*.java
   ```

2. run server with:
   ```bash
   java server.Server
   ```
3. connect exactly `2` clients


### in client-side
1. compile client program
   ```bash
   javac client/*java
   ```
2. run client with: 
   ```bash
   java client.Client
   ```
   
3. enter server IP address
4. connect another client 
5. enjoy





---------------

UPDATE: if you have more clients, you can use `ParallelClient` with same server 

1. run server same as above
2. compile client same as above 
3. run parallel client as many as you want 

```bash
java client.ParallelClient
```

note: for handling concurrent read and write, a thread handle read from socket and main thread get data from scanner and write to socket