class TooBigDoubleException extends RuntimeException {
}

public class Ex2 {
    public static long rationalToIntegeral(double d) {
        if (d == Double.NaN) {
            throw new IllegalArgumentException();
        }
        long l = (long) d;
        if (Math.abs(d - l) > 1) {
            throw new TooBigDoubleException();
        }
        return l;
    }

    public static void main(String[] args) {
        // use method

        long ans = rationalToIntegeral(1.2);
        System.out.println("ans " + ans);
    }
}
