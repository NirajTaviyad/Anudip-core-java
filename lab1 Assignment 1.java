/*1.write Java Program to find maximum number using ternary operator.*/

package anp;

import java.util.Scanner;

public class Maximumnuumber {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);      
		System.out.println("enter first number");
		int a=sc.nextInt();   /*scanner for take input from user*/
		System.out.println("enter second number");
		int b=sc.nextInt();    /*scanner for take input from user*/
		
		if(a>b)   /*if condition using ternary operator*/
		{
			System.out.println(a+" number is Maximum");
		}
		else
		{
			System.out.println(b+" number is Maximum");
		}
		
	}

}



/*  output:
enter first number
5
enter second number
10
10 number is Maximum