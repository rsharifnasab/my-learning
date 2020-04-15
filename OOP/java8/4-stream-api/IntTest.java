import java.util.*;
import java.util.stream.*;

public class IntTest {
    public static void main(String[] args) {
        

        System.out.println("adad e 0-9:");
        IntStream.range(0,10)
            .forEach(a -> System.out.println(a));



        System.out.println("********************************");

        System.out.println("tedad adad e zoj e 1-10");
        long tedadZoj = IntStream.rangeClosed(1,10)
             
            .filter(a -> a%2 == 0)
            .count();
        System.out.println(tedadZoj);



        System.out.println("********************************");
        
        System.out.println("adad e avval 1 ta 20");
        IntStream.rangeClosed(1,20)
            .filter( a -> 
                 IntStream.rangeClosed(1,a)
                 .filter(b -> a%b == 0)
                 .count() == 2
                )
            .forEach(a -> System.out.println(a));


        System.out.println("********************************");

        int[] zoj1to10 = IntStream.rangeClosed(1,5)
            .map( i -> 2*i )
            .toArray();
        System.out.println("arr[0] : " + zoj1to10[0]);
        System.out.println(
                Arrays.toString(zoj1to10)
                );


        System.out.println("********************************");
        Scanner sc = new Scanner(System.in);
        String line = sc.nextLine();

        int [] arr = Arrays.stream( line.trim().split(" ") )
            .mapToInt( a -> Integer.parseInt(a) )
            .toArray();

        Arrays.stream(arr).forEach(i -> System.out.println(i));


        System.out.println("********************************");
        Random random = new Random();
        int randomMin = IntStream.rangeClosed(1,10)
            .map(i -> random.nextInt() )
            .reduce( (a,b) -> a<b ? a : b ) // return optional
            .getAsInt();
        System.out.println("some random integer : "+randomMin);

    }
}

// boxed 
// allMatch
// noneMatch
