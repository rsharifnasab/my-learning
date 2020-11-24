import java.time.*;

interface Java7Interface {
    boolean todayIsSaturday();
    boolean todayIsNotSaturday();
}


public class J7Test {
    public static void main(String[] args) {

        Java7Interface j7i = new Java7Interface(){
            public boolean todayIsSaturday() {
                DayOfWeek dow = LocalDate.now().getDayOfWeek();
                if(dow == DayOfWeek.SATURDAY) return true;
                else return false;
            }
            public boolean todayIsNotSaturday(){
                return !todayIsSaturday();
            }
        }; // define mathods while instancing

        System.out.println(j7i.todayIsSaturday());
        System.out.println(j7i.todayIsNotSaturday());
    }


}
