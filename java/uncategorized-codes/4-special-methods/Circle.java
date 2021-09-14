public class Circle {

    public static Circle ofArea(double area) {
        double r = Math.sqrt(area) / Math.PI;
        Circle c = new Circle(r);
        return c;
    }

    private final double r;

    public Circle(double r) { // constructors are private and public too
        this.r = r;
    }

    public String toString() {
        return "circle; r is " + r;
    }

    public double getDiameter() {
        return 2 * r;
    }

    public double getRadius() {
        return this.r;
    }

    public double getArea() {
        return r * r * Math.PI;
    }

    private static boolean doubleCompare(double d1, double d2) {
        return (Math.abs(d1 - d2) < 0.0001);
    }

    public boolean equals(Object o) {
        if (o instanceof Circle) {
            Circle other = (Circle) o;
            return doubleCompare(this.r, other.r);
        } else return false;
    }

    public static void main(String[] args) {

        Circle ca = Circle.ofArea(1.2);

        Circle c = new Circle(0.3); // r

        double d = c.getDiameter(); // 0.6
        double r = c.getRadius(); // 0.3
        double s = c.getArea(); // pi*0.3*0.3

        System.out.println(c); // print good info
        String str = c.toString();

        Circle other = new Circle(0.1 + 0.2); // new circle with almost 0.3
        if (c.equals(other)) {
            System.out.println("they are equals"); // should print this
        } else {
            System.out.println("not equals");
        }
    }
}
