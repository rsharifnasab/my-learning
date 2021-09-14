class Player {
    static int f = 0;

    static {
        System.out.println("static init block");
    }

    { // initialization block
        System.out.println("init block");
    }
}

public class Construct {
    public static void main(String[] args) {
        Player p; // kari nadare be class
        System.out.println("--1--");
        Player.f++;
        System.out.println("--2--");

        p = new Player();
        p = new Player();
    }
}

/*
 * run program
 * 1- jvm load
 * 2- load class e havi main (Construct)
 *  static e Contrucct ejra
 * 3- ejra line be line
 * 4- mirese be class e Player
 *   static e player ro ham ejra mikone (load)
 *
 *
 */
