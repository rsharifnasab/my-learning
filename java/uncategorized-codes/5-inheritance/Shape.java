public abstract class Shape {
    public abstract int getArea();

    public static void main(String[] args) {

        System.out.println("we are in shape main");

        Circle c = new Circle();
        c.getArea();

        Shape sh = new Shape() {
            public int getArea() {
                return 3;
            }
        };
        int t = sh.getArea();
        System.out.println("t : " + t);
    }
}

class Circle extends Shape {
    @Override
    public int getArea() {
        return (int) 3.14 * 2;
    }
}
