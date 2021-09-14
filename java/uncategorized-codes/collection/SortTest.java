import java.util.*;

class Student implements Comparable<Student> {
    String name;
    int height;

    public Student(String name, int height) {
        //
        this.name = name;
        this.height = height;
    }

    public int compareTo(Student other) {
        return this.name.compareTo(other.name);
    }

    public String toString() {
        return "student " + this.name + " " + this.height;
    }
}

public class SortTest {
    public static void main(String[] args) {
        List<Student> l = new ArrayList<>();
        l.add(new Student("ali alavi", 1));
        l.add(new Student("tagih taghavi", 5));
        l.add(new Student("naghi naghavi", 3));

        Collections.sort(l);
        System.out.println(l);
        Collections.sort(l, Collections.reverseOrder());
        System.out.println(l);

        Comparator<Student> heightComparator = new Comparator<>() {
            public int compare(Student s1, Student s2) {
                return s1.height - s2.height;
            }
        };

        Collections.sort(l, heightComparator);
        System.out.println(l);

        Collections.sort(l, new Comparator<>() {
            public int compare(Student s1, Student s2) {
                return 0;
            }

            ;
        });
    }
}
