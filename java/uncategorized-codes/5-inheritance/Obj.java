class A {
    @Override
    public String toString() {
        return "we are in A";
    }
}

class B {
}

class C extends B {
}

public class Obj {
    public static void main(String[] args) {

        Object o = new A();
        System.out.println(o.toString());
        o = new B();
        o = new C();
    }
}
