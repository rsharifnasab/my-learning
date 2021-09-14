public class Exce4 {
    static int finallyReturn() {
        try {
            if (true)
                throw new Exception();
            return 0;
        } finally {
            return 2;
        }
    }

    static int taghsim(int a, int b) {
        if (b == 0) {
            throw new ArithmeticException("taghsim bar sefr");
        }
        return a / b;
    }

    public static void main(String[] args) {
        System.out.println("return value was : " + finallyReturn());
        try {
            System.out.println(taghsim(5, 2));
            System.out.println(taghsim(1, 0));
            System.out.println(taghsim(5, 2));
        } finally {
            System.out.println("goodbye");
            // it will happen in all situations!
        }
    }
}
