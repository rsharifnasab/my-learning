class Student {
    int age;
    String name;
}

public class ExcepCl {

    public static void f(Student s) { //
        if (s == null) {
            throw new ArrayIndexOutOfBoundsException("message");
        }
        System.out.println("student : " + s.age + " " + s.name);
    }

    public static void main(String[] args) {
        try {
            Student s = new Student();
            s.age = 12;
            s.name = "roozbeh";
            f(s);

            f(null);
        } catch (NullPointerException e) {
            System.out.println("reference null boud");
            System.exit(0);
        }
        System.out.println("bye");
    }
}
