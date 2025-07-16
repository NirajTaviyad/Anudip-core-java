/*Write a program to declare stack.Store 10 elements into it.Remove 4 elements from stack and display it.*/
package anp;
import java.util.*; 
public class StackExample {

	public static void main(String[] args) {
		Stack <Integer> sk = new Stack <>(); //stack declaration
        int[] values= {75,25,45,96,78,22,17,36,10,1}; //10 elements in array
        for(int val : values) //using loop for insert value in stack
        {
        	sk.push(val);
        }
        System.out.println("full stack:"+sk);//print full stack 
        for(int i=0;i<4;i++) // using for loop for remove 4 elements
        {
        	sk.pop();
        }
        System.out.println("Stack after remove 4 elements:"+sk);//print full stack after remove 4 elements
	}

}
/*
Output:
full stack:[75, 25, 45, 96, 78, 22, 17, 36, 10, 1]
Stack after remove 4 elements:[75, 25, 45, 96, 78, 22]
*/