import java.time.*;

interface Java8Interface {

    boolean todayIsSaturday();

    default boolean todayIsNotSaturday(){
       return ! todayIsSaturday();
    }
}

class Java8class implements Java8Interface {

    public boolean todayIsSaturday() {
        DayOfWeek dow = LocalDate.now().getDayOfWeek();
        if(dow == DayOfWeek.SATURDAY) return true;
        else return false;
    }

    // no need to anything about todayIsNotSaturday method
}


public class J8Test {
    public static void main(String[] args) {
        Java8Interface j8i = new Java8class();
        System.out.println(j8i.todayIsSaturday());
        System.out.println(j8i.todayIsNotSaturday());
    }
}
