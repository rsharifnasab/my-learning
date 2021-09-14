public class Exce3 {
    static int taghsim(int a, int b) {
        if (b == 0) {
            throw new ArithmeticException("taghsim bar sefr");
        }
        return a / b;
    }

    public static void main(String[] args) {
        try {
            System.out.println(taghsim(5, 2));
            System.out.println(taghsim(1, 0));
            System.out.println(taghsim(5, 2)); // anjam nemishe
        } catch (ArithmeticException e) {
            // e.printStackTrace();
        }
        System.out.println("good bye");
        try {
            throw new ArrayIndexOutOfBoundsException();
        } catch (ArrayIndexOutOfBoundsException e) {
            System.out.println("out of bound");
        }
        System.out.println("lotfan adad vared kon");
        java.util.Scanner sc = new java.util.Scanner(System.in);
        try {
            String s = sc.next();
            if (true)
                throw new NullPointerException();
            int i = Integer.parseInt(s, 2); // "111" -> 7
            System.out.println("added shoma:" + i);
        } catch (NumberFormatException e) {
            System.out.println("addedtun dorost naboud");
        } catch (NullPointerException e) {
            System.out.println("npe");
            e.printStackTrace();
        }
    }
}
