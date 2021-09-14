class B extends A {
    static int F = 2;

    //  public int get() { return F; }
}

class A {
    static int F = 1;

    public int get() {
        return A.F;
    }
}

public class St {

    public static void main(String[] args) {
        A a = new A();
        System.out.println(a.get());
        a = new B();
        System.out.println(a.get());
    }
}
