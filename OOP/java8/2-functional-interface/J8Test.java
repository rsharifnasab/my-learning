import java.time.*;

@FunctionalInterface
interface Java8Interface {


    boolean todayIsSaturday();
    // just one un-implemented method


    default boolean todayIsNotSaturday(){
        return !todayIsSaturday();
    } // use another unimplemented method


}


public class J8Test {
    public static void main(String[] args) {


        Java8Interface j8i = () ->  LocalDate.now().getDayOfWeek() == DayOfWeek.SATURDAY;
        // define the only method while instancing
        System.out.println(j8i.todayIsSaturday());
        System.out.println(j8i.todayIsNotSaturday());
    }


}
