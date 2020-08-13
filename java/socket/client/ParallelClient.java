
package client;

import java.io.*;
import java.net.*;
import java.util.*;

class ReadPrint extends Thread{
    DataInputStream in;
    String data = "";

    public ReadPrint(DataInputStream dis){
        this.in = dis;
    }

    public void run(){

        try{
            while(!data.equals("done")){
                data = in.readUTF();
                System.out.println("recieved ["+data+"]");
            }
        } catch(Exception e){
            throw new RuntimeException(
                    "in reading data from socket, problem happened",e);
        }

    }

}
public class ParallelClient {
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

        // handle recieves in other loop
        new ReadPrint(in).start();

        while(true){
            String data = sc.nextLine().trim();
            out.writeUTF( data );
        }
    }
}

