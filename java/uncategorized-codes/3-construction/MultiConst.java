class Circle {
    double r;
    String name;

    // constrcutro 1
    Circle(double r, String name) {
        this(r);
        this.name = name;
        System.out.println("const 1");
    }

    // constructor 2
    Circle(double r) {
        if (r < 0)
            System.out.println("error");
        this.r = r;
        System.out.println("const 2");
    }
}

public class MultiConst {
    public static void main(String[] args) {
        // Circle c = new Circle(1.2);
        Circle c = new Circle(1.2, "roozbeh");
    }
}
