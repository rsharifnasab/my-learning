class Student {
    String name;
    int age;
}

public class Modify {

    static void modifer1(Student s) {
        s.age--; // can modify properties
    }

    static void modifer2(Student s) {
        Student another = new Student();
        another.name = "nima";
        another.age = 19;
        s = another; // it cant change the identity
    }

    public static void main(String[] args) {
        Student s = new Student();
        s.name = "roozbeh";
        s.age = 20;

        System.out.println(s.name + " " + s.age);
        modifer1(s);
        System.out.println(s.name + " " + s.age); //changes
        modifer2(s);
        System.out.println(s.name + " " + s.age); // doesn't changed

    }
}
