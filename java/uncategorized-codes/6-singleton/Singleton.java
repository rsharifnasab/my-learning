public class Singleton {
    // static method
    // constructor change
    // static field az khode class
    // private public
    private static Singleton inner = new Singleton();

    public static Singleton getInstance() {
        return inner;
    }

    private Singleton() {
        // file open
        //
    }

    public void f1() {
        System.out.println("we are in f1");
    }
}

class Main {

    public static void main(String[] args) { //

        // Singleton s = new Singleton();
        Singleton s1 = Singleton.getInstance();
        Singleton s2 = Singleton.getInstance();
        if (s1 == s2) {
            System.out.println("mosavi");
        }

        Singleton.getInstance().f1();
    }
}
