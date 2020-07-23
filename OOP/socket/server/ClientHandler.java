package server;

import java.net.*;
import java.io.*;

public class ClientHandler extends Thread{
    private final Socket socket;
    private final DataInputStream   in;
    private final DataOutputStream out;
    public final int number;

    public ClientHandler(Socket s, int no) throws Exception{
        this.socket = s;
        this.in  = new DataInputStream(s.getInputStream());
        this.out = new DataOutputStream(s.getOutputStream());

        this.number = no;
        System.out.println("client "+number+" connected");

        send(""+number); // send client number
    }


    // our class extends Thread
    // after staring thread, this method will run 
    public void run(){
        try{
            String data = "";
            while(!data.equals("done")){
                data = in.readUTF();
                System.out.println(number+":"+data);


                // send message to toher clients
                for(ClientHandler cl : server.Server.connections){
                    if(cl == this) continue; // dont send message for sender
                    cl.send("from "+number+": "+data);
                }
            }
        } catch(Exception e){
            throw new RuntimeException("client handler of "+number+"had problems",e);
        }
    }

    public synchronized void send(String toSend) throws IOException {
        out.writeUTF(toSend);
    }
}


