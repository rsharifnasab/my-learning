import java.io.*;
import java.net.*;
import java.util.*;
import java.util.concurrent.*;

class ClientHandler extends Thread {

    DataInputStream dis;
    DataOutputStream dos;

    public ClientHandler(DataInputStream dis, DataOutputStream dos) {
        this.dis = dis;
        this.dos = dos;
    }

    public void run() {
        try {
            while (true) {
                String command = dis.readUTF();
                String key = dis.readUTF();

                if (command.equals("set")) {
                    String setValue = dis.readUTF();
                    Server.map.put(key, setValue);
                    dos.writeUTF("set done");
                } else if (command.equals("get")) {
                    String getValue = Server.map.get(key);
                    if (getValue == null) {
                        dos.writeUTF("key does not exists");
                    } else {
                        dos.writeUTF(getValue);
                    }
                } else {
                    dos.writeUTF("unknown command");
                }

                System.out.println("command : " + command);
                System.out.println("key     : " + key);

                dos.flush();
            }
        } catch (IOException e) {
            System.out.println("client disconnected");
        }
    }
}

public class Server {

    public static Map<String, String> map;

    public static void main(String[] args) throws IOException {
        map = new ConcurrentHashMap<>();

        ServerSocket ss = new ServerSocket(8080);
        System.out.println("--> waiting for client to connect");

        while (true) {
            Socket s = ss.accept(); // montazer
            System.out.println("client connected");

            OutputStream os = s.getOutputStream();
            DataOutputStream dos = new DataOutputStream(os);

            InputStream is = s.getInputStream();
            DataInputStream dis = new DataInputStream(is);

            new ClientHandler(dis, dos).start();
        }
    }

}
