/*Write a Java program to calculate area using method overloading for the following shapes:

Circle (radius)

Rectangle (length, breadth)

Triangle (base, height)

Use the method area() with different parameters.*/

package anp;

public class Calculatearea {
	void area(int a)
	{
		System.out.println("area is :"+3.14*a*a);
	}
	void area(int l,int w)
	{
		System.out.println("area is :"+l*w);
	}
	void area(double b,double h)
	{
		System.out.println("area is :"+0.5*b*h);
	}

	public static void main(String[] args) {
		Calculatearea obj=new Calculatearea();
		obj.area(10);
		obj.area(2,8);
		obj.area(10,20);	

	}

}


/*output:-
area is :314.0
area is :16
area is :200*/

