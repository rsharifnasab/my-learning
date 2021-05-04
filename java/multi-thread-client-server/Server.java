import java.util.concurrent.atomic.AtomicInteger;

import java.io.*;
import java.net.*;
import java.util.*;
import java.util.concurrent.*;


class ClientHandler extends Thread {
    final int id;
    final DataInputStream dis;
    final DataOutputStream dos;
    final Map<String, String> db;
    final AtomicInteger usersCount;

    public ClientHandler(Socket socket, int ID, Map<String, String> db, AtomicInteger usersCount)
    throws IOException {
        this.id = ID;

        this.dis = new DataInputStream(
            socket.getInputStream());
        this.dos = new DataOutputStream(
            socket .getOutputStream());

        this.db = db;

        this.usersCount = usersCount;
    }

    public void run() {
        try {
            while (true) {
                String command = dis.readUTF();
                String key = dis.readUTF();
                String value;

                switch (command) {
                case "get":
                    value = db.get(key);
                    if (value == null)
                        value = "nil";
                    dos.writeUTF(value);

                    break;

                case "set":
                    value = dis.readUTF();
                    db.put(key, value);
                    dos.writeUTF("key has been set successfully!");
                    break;
                }

                dos.flush();
            }
        } catch (IOException e) {
            //e.printStackTrace();
            System.out.println("client " + this.id + " disconnected");
            this.usersCount.decrementAndGet();
        }
    }
}

class ServerCli extends Thread {
    final AtomicInteger count;
    final Map<String, String> db;
    final Scanner scanner;

    public ServerCli(Map<String, String> db, AtomicInteger count) {
        this.db = db;
        this.count = count;
        this.scanner = new Scanner(System.in);
    }

    public void run() {
        while (true) {
            String command = scanner.nextLine();
            if ("status".equals(command.trim())) {
                System.out.println("users: " + this.count.get());
                System.out.println("keys: " + this.db.size());
            }
        }
    }
}

public class Server {
    public static int port;
    public static Map<String, String> db;
    public static AtomicInteger usersCount;

    public static void main(String[] args) throws IOException {
        port = Integer.parseInt(args[0]);
        db = new ConcurrentHashMap<>();
        usersCount = new AtomicInteger(0);



        ServerSocket serverSocket = new ServerSocket(port);

        new ServerCli(db, usersCount).start();

        while (true) {
            Socket clientSocket = serverSocket.accept();
            int id = usersCount.get();
            new ClientHandler(clientSocket, id, db, usersCount).start();
            usersCount.incrementAndGet();
        }
    }
}
