package server;

import java.net.*;
import java.io.*;
import java.util.*;
import java.util.concurrent.*;


public class Server {

    public final static int PORT = 2001;

    private static ServerSocket serverSocket = null;

    public static final Set<ClientHandler> connections = 
        new CopyOnWriteArraySet<>(); 
        // thread safe set 
    
    public static void main(String[] args) throws Exception{
        System.out.println("creting server");
        serverSocket = new ServerSocket(PORT);
        System.out.println("server is now listeting on port "+PORT);
        // note that server doesn't need dest address 

        while(true){
            // accept different clients
            Socket socket = serverSocket.accept();
            System.out.println("someone is connecting");

            ClientHandler cl = new ClientHandler(socket,connections.size());
            connections.add(cl);
            cl.start();
            // this thread handle communications of this client
        }

    }
    

}
