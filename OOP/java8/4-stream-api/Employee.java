import java.util.*;

public class Employee{
    String name;
    int salary;
    boolean married;

    public Employee(String name, int salary, boolean married) {
        this.name = name;
        this.salary = salary;
        this.married = married;
    }

    @Override
    public String toString() {
        return "Employee{" +
            "name = " + name +
            ", salary = " + salary +
            ", married = " + married +
            "}";
    }

    public boolean married(){
        return this.married;
    }    
    public int getSalary(){
        return this.salary;
    }                      
    public String getName() {
        return this.name;
    }
     
    public static void main(String[] args) {
        List<Employee> employees = Arrays.asList(
                new Employee("naghi",22,true),
                new Employee("ali",10,false),
                new Employee("taghi",20,false),
                new Employee("param",30,true)
                );
        

        // we want to calculate minumum salary of employees
        // that are married
        //in java 7 we do:
        int min7 = Integer.MAX_VALUE;
        for ( Employee e : employees ) {
            if(!e.married()) continue;
            if (min7 > e.getSalary()) min7 = e.getSalary();
        }


        // java 8 way: 
        int min8 = employees.stream()
            .filter(a -> a.married())
            .mapToInt( e -> e.getSalary() )
            .min()
            .getAsInt();
        

        System.out.println(min7);
        System.out.println(min8);
    } 

}
