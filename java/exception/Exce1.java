public class Exce1 {
    static int result = 0;

    static int taghsim(int a, int b) { // callee
        if (b == 0) {
            result = 1;
            return -1;
        }
        return a / b;
        // what if b = zero?
    }

    public static void main(String[] args) { // caller
        System.out.println(taghsim(5, 2));
        System.out.println(taghsim(1, 0));
        if (result == 1) {
            System.out.println("error in division");
            result = 0;
        }
    }
}
