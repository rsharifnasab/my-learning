public class Exce5 {
    static int finallyReturn() throws Exception { // new
        if (true) {
            throw new Exception();
        }
        return 1;
    }

    static int taghsim(int a, int b) { // doesnt need new
        if (b == 0) {
            throw new ArithmeticException("taghsim bar sefr");
        }
        return a / b;
    }

    public static void main(String[] args) {

        /*
         * finallyReturn();
         * we should put in try catch
         * or write: main throws Exception
         */
        System.out.println(taghsim(5, 2)); // no problem
        System.out.println(taghsim(1, 0));
        System.out.println(taghsim(5, 2));
    }
}
