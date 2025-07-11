/*Passing two dimensional array to method*/

public class Array {
	
	static void display(int a[][])  // static method 
	{
		System.out.println("two dimensionl array:");
		
		for(int i=0;i<a.length;i++)
		{                                      //nested for loop
			for(int j=0;j<a[i].length;j++)
			{
				System.out.println(a[i][j]);  //print array
			}
		}
	}
	
	public static void main(String[] args)
	{
		int a[][]= {{1,2,3},{4,5,6}}; //declaring and initializing two dimensional array
		show(a);
	}

}

/* output:
two dimensionl array:
1
2
3
4
5
6
*/