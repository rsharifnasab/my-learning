import java.net.Socket;
import java.util.Scanner;

import java.io.*;
import java.util.*;

public class Client {
    public static void main(String[] args) throws IOException {
        String serverAdd = args[0];
        int port = Integer.parseInt(args[1]);


        Scanner scanner = new Scanner(System.in);

        Socket socket = new Socket(serverAdd, port);
        DataInputStream dis = new DataInputStream(
            socket.getInputStream());
        DataOutputStream dos = new DataOutputStream(
            socket.getOutputStream());


        while (true) {
            String command = scanner.next();

            if ("exit".equals(command.trim()))
                break;

            String key = scanner.next();
            String value = scanner.nextLine().trim();

            dos.writeUTF(command);
            dos.writeUTF(key);

            if ("set".equals(command)) {
                dos.writeUTF(value);
            }

            dos.flush();

            String response = dis.readUTF();

            System.out.println(response);
        }

        socket.close();
    }
}
