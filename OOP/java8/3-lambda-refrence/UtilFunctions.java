public class UtilFunctions {
    public static void main(String[] args) {


        Predicate<String> salamHast = (a) -> a.equals("salam");

        if( salamHast.test("some other string") )
            System.out.println("test mosbat");

        if( salamHast.negate().test("another string") )
            System.out.println("test manfi");

         //////////////////////////////////////

        Function<Integer,String> intToString1 = a -> UtilFunctions.customToString(a);
        System.out.println(intToString1.apply(1));

        // refrnce to method (same as pointer to function)
        Function<Integer,String> intToString2 = UtilFunctions::customToString;
        System.out.println(intToString2.apply(2));
    }


    static String customToString(Integer inp){
         return "this is your string {" + inp + "} in demical";
    }
}
