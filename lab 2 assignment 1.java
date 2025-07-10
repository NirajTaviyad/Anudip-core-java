/*Write a Java program to demonstrate method overloading by creating a class Calculator with multiple add() methods that accept different parameter types.*/
package anp;

public class Calculator {
	
	void add(int a,int b) /*method*/
	{
		System.out.println("addition of integer value is:"+(a+b));
	}
	
	void add(float p,float n,float m) /*method overloading with different type and parameter */
	{
		System.out.println("addition of float value is:"+(p+n+m));
	}
	void add(double x,double y) /*method overloading with different type and parameter */
	{
		System.out.println("addition double value is:"+(x+y));
	}
    
	public static void main(String[] args) {
		
		Calculator cl = new Calculator();/*object*/
		cl.add(5,9);
		cl.add(5.5f,10.1f,1.1f);
		cl.add(100.1,10.11);

	}

}
/*Output:
addition of integer value is:14
addition of float value is:16.7
addition double value is:110.21
*/