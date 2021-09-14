class Box<T> { // maybe, optional
    private T t;

    public Box(T t) {
        set(t);
    }

    public Box() {
        set(null);
    }

    public void set(T t) {
        this.t = t;
    }

    public T get() {
        return t;
    }
}

public class Gener2 {
    static Box<String> getString(int i) {
        if (i % 2 == 0)
            return new Box<String>("salam");
        else
            return new Box<String>(null);
    }

    public static void main(String[] args) {
        System.out.println(getString(1).get());

        Box<Integer> integerBox = new Box<>();
        Box<String> stringBox = new Box<>();

        integerBox.set(Integer.valueOf(2)); // or set(2)
        stringBox.set("Hello World");

        String s = stringBox.get();
        System.out.printf("Integer Value :%d\n\n", integerBox.get());
        System.out.printf("String Value :%s\n", stringBox.get());

        Box b = new Box(); // raw
        b.set(1);
        b.set("salam");
        b.set(1.2);
        Object temp = b.get();
        System.out.println(b.get());
    }
}
