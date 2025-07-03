/* 2. Write a Java program to calculate factorial of given number. eg.3!=3*2*1=6 */


package anp;

import java.util.Scanner;

public class Factorial {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("enter number");
		int n=sc.nextInt();
		int fact=1;
		for(int i=1;i<=n;i++)
		{
			fact=fact*i;
		}
		System.out.println(n+"'s factorial is "+fact);

	}

}



/*  output:
enter number
5
5's factorial is 120