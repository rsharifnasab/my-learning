import java.util.Scanner;

class Player {
    String name;
    int id;
    Tire[] t;

    // this is constructor
    /* no return type */ Player(String name, int id) {
        this.name = name;
        this.id = id;
        System.out.println("we are in constructor");

        t = new Tire[4];
        t[0] = new Tire();
    }
}

public class ConstructorTest {

    public static void main(String[] args) {

        final Scanner sc = new Scanner(System.in);

        Player p1 = new Player("ali", 12);

        Player p2 = new Player("taghi", 13);

        System.out.println("p1 : " + p1.name);
        System.out.println("p2 : " + p2.name);
    }
}
