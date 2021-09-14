class A {
    public void f() {
    }

    @Override
    public boolean equals(Object c) {
        if (c instanceof A) {
            A temp = (A) c;
            temp.f();

            // compare this , temp
            return true;
        } else
            return false;
    }
}

class B {
}

class C extends B {
}

public class Eq {
    public static void main(String[] args) { //
        Object o = new C();
        if (o instanceof B) {
            System.out.println("o is B");
        } else {
            System.out.println("o is not B");
        }

        A a = new A();
        if (a.equals(new A())) {
            System.out.println("A , B are equals");
        }

        Object test = new A();
        A test2 = (A) test;
        test2.f();
    }
}
