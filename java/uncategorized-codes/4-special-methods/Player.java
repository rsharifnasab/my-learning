public class Player {
    String name;
    int number;

    Player() {
        this.name = "ali";
    }

    public String toString() {
        return "I am in toString";
    }

    public boolean equals(Player o) {
        // this : p1
        // o : p2
        if (this.name.equals(o.name) && this.number == o.number)
            return true;
        else
            return false;
    }

    public static void main(String[] args) {
        Player p1 = new Player();
        p1.number = 3;

        Player p2 = new Player();
        p2.number = 3;

        if (p1.equals(p2)) {
            System.out.println("mosavi");
        } else {
            System.out.println("namosavi");
        }
    }
}
