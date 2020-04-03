/*
	the C code: 
	
    struct light{
        bool isOn = false;
        const int price = 10;
    }

    usage: light l1;
    l1.isOn = false;
    
*/


// the java code: 

class Light{
    boolean isOn = false;    
    final int price = 10;
}




public class Object1{
    public static void main(String[] args){

    	//usage:
    	Light l1 = new Light();
    	l1.isOn = true;

    	/*
    	this usages are not true:      

        Light l1;  -> not initialized
        l1.isOn = true;
        
        Light l2 = null; -> null
        l2.isOn = true;

        */
        
	}
}
