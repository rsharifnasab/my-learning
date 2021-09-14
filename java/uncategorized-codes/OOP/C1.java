import java.util.Scanner;

class Student {
    int age;
    String name = null;
    long id;

    static Student studentBegir() {
        Scanner sc = new Scanner(System.in);

        Student s = new Student();
        s.name = sc.next();
        s.age = sc.nextInt();
        s.id = sc.nextLong();

        return s;
    }

    static String studentBeString(Student s) {
        return "{ name: " + s.name + "age : " + s.age + "}";
    }

    static void chapKon(Student s) { // static method
        String str = studentBeString(s);
        System.out.println(str);
    }

    void chapBesho(/* Student this */) { // non-static method

        String str = studentBeString(this);
        System.out.println(str);
        this.name = "golabi";
    }
}

////////////////////////////////////

public class C1 {

    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        Student s1 = Student.studentBegir();
        Student.chapKon(s1);
        s1.chapBesho();
    }
}
