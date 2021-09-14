class A {
    public int num() {
        return 1;
    }
}

class B extends A {

    @Override
    public int num() {
        return 2;
    }

    public String name() { //
        return "my name is B instance";
    }
}

interface Show {
    void show();
}

interface Draw {
    void draw();
}

class Player implements Draw, Show {
    public void draw() {
        System.out.println("draw of player");
    }

    public void show() {
        System.out.println("show in player");
    }
}

class Ball implements Draw {
    public void draw() {
        System.out.println("draw of ball");
    }
}

public class Poly {
    private static void drawer(Draw d) {
        d.draw();
    }

    public static void main(String[] args) {
        Draw[] dArr = new Draw[6];
        dArr[0] = new Ball();
        dArr[1] = new Player();
        dArr[2] = new Player();
        dArr[3] = new Player();
        dArr[4] = new Player();
        dArr[5] = new Player();

        for (int i = 0; i < dArr.length; i++) {
            dArr[i].draw();
        }

        drawer(new Ball());
        drawer(new Player());

        A myA = new A();
        System.out.println("myA num" + myA.num());

        B myB = new B();
        System.out.println("myB num" + myB.num());
        myB.name();

        A poly = new B();
        System.out.println("poly num" + poly.num()); // 2
        // poly.name();

        Draw d = new Player();
        d.draw(); // player.draw
        d = new Ball();
        d.draw(); // ball.draw

        Show sh = new Player();
        sh.show();
    }
}

interface runnable {
    void run();
}

class T implements runnable {

    public void run() {
    }

    //
    //
    //
    //
    //
}
