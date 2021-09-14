/*
 * Override: mesle toString ya eat touye kelas balaa vojoud dare
 * ma darim darfatar ro baz ta'rif mikonim
 *
 *
 * two or more methods in same class
 * with different signatures
 *
 */

public class Human extends Object {

    public void run() {
        System.out.println("Im runniing");
    }

    public void run(int a) {
        System.out.println("im running with speed " + a);
    }

    public void eat() {
        System.out.println("im eating");
    }

    public static void main(String[] args) {
        AbarHuman ah = new AbarHuman();
        ah.run();
        ah.run(10);
    }
}

class AbarHuman extends Human {

    @Override
    public void run() {
        System.out.println("super run");
    }

    public void fly() {
        System.out.println("im flying");
    }
}

// parvaz
