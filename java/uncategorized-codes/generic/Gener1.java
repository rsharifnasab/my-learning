public class Gener1 {
    public static <V> void printArray(V[] elements) {
        for (V value : elements) {
            System.out.print(value + " ");
        }
        System.out.println();
    }

    // important
    public static <V> V f(V value) {
        // return new V();
        return value;
    }

    public static Object f1(Object value) {
        return value;
    }

    public static <V> String stringValueOf(V v) {
        return v.toString();
    }

    public static String stringValueOf1(Object v) {
        return v.toString();
    }

    public static void main(String[] args) {
        String[] s = new String[]{"1", "salam"};
        Integer[] i = new Integer[]{1, 3};
        printArray(s);
        printArray(i);

        Integer ii = f(1);
        String ss = f("salam");
        double d = f(1.2);

        Integer ii1 = (Integer) f1(1);
        String ss1 = (String) f1("salam");
        double d1 = (Double) f1(1.2);

        String v = stringValueOf("salam");
        System.out.println(v);
        v = stringValueOf1(42);
        System.out.println(v);
        v = stringValueOf1(1.3);
        System.out.println(v);
    }
}
