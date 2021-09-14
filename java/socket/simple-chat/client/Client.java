package client;

import java.io.*;
import java.net.*;
import java.util.*;

public class Client {
    public final static int PORT = 2001;
    public final static Scanner sc = new Scanner(System.in);

    public static String serverAddress = null;
    
    public static Socket socket = null;
    public static DataInputStream in = null;
    public static DataOutputStream out = null;
    
    public static Integer myNumber = null;
    
    public static void main(String[] args) throws IOException{
        System.out.println("enter server address");
        serverAddress = sc.nextLine().trim();

        socket = new Socket(serverAddress,PORT);
        in = new DataInputStream(socket.getInputStream());
        out = new DataOutputStream(socket.getOutputStream());

        System.out.println("connected to server");
        myNumber = Integer.parseInt(in.readUTF());
        System.out.println("my number is :"+myNumber);

        if(myNumber>=2) 
            throw new RuntimeException("this program only supports 2 client ");

        String data = "";
        if(myNumber%2==0){
            data = in.readUTF();
            System.out.println("recieved: ["+ data +"]");
        }
        while(!data.equals("done")){
            System.out.print("your message: ");
            System.out.flush();
            out.writeUTF( sc.nextLine().trim() );

            data = in.readUTF();
            System.out.println("recieved: ["+ data +"]");
        }
    }
}

