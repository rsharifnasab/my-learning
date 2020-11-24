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

        /*
        public boolean todayIsSaturday() {
            DayOfWeek dow = LocalDate.now().getDayOfWeek();
            if(dow == DayOfWeek.SATURDAY) return true;
            else return false;
        }
        */

        Java8Interface j8i = () ->  LocalDate.now().getDayOfWeek() == DayOfWeek.SATURDAY;
        // define the only method while instancing
        
        System.out.println(j8i.todayIsSaturday());
        System.out.println(j8i.todayIsNotSaturday());
    }


}
