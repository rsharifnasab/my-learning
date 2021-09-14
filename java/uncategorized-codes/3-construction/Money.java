public class Money {
    static int dollarPrice;

    final int amountInRial;

    public Money(int rials) {
        this.amountInRial = rials;
    }

    public static void setDollarPrice(int rials) {
        Money.dollarPrice = rials;
    }

    public int getAsRial() {
        return /* this. */ amountInRial;
    }

    public double getAsDollar() {
        return 1.0 * this.amountInRial / dollarPrice;
    }

    public static void main(String[] args) {
        Money.setDollarPrice(4_200_0); // static

        Money m = new Money(1500);   // 1500 rials!
        double dD = m.getAsDollar(); // returns 1500 / 42 000 0
        int rials = m.getAsRial();   // return 1500

        Money.setDollarPrice(23_000_0);
        double dB = m.getAsDollar(); // return 1500 / 23 000 0

        System.out.println("dD: " + dD);
        System.out.println("dB: " + dB);
        System.out.println(" R: " + rials);
    }
}
