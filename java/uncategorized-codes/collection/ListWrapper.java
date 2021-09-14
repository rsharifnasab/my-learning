import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Scanner;

public class ListWrapper {
    public static void main(String[] args) {
        List<String> inner = new LinkedList<>(); // which list is better?
        Scanner sc = new Scanner(System.in);

        while (sc.hasNext()) {
            String command = sc.next();
            switch (command) {
                case "add": {
                    String toAdd = sc.next();
                    inner.add(toAdd);
                }
                break;
                case "addIndex": {
                    String toAdd = sc.next();
                    int ind = sc.nextInt();
                    inner.add(ind, toAdd);
                }
                break;
                case "removeValue": {
                    String toRemove = sc.next();
                    inner.remove(toRemove);
                }
                break;
                case "removeIndex": {
                    int ind = sc.nextInt();
                    inner.remove(ind);
                }
                break;
                case "print":
                    System.out.println(inner);
                    break;
                case "length":
                    System.out.println(inner.size());
                    break;
                case "clear":
                    inner.clear();
                    break;
                default:
                    System.out.println("error");
            }
        }
    }
}
