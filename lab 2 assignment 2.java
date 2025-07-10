/*Create a superclass Animal with a method makeSound(). Create two subclasses Dog and Cat that override the method.*/
package anp;

class Animal //parent class
{
	void makesound()
	{
		System.out.println("Animal make sound");
	}
}
class Dog extends Animal//child class
{
	void makesound()//overriding method
	{
		System.out.println("Dog is Barking");
	}
}
class Cat extends Animal//child class
{
	void makesound() //overriding method
	{
		System.out.println("Cat say meow");
	}
}
public class Overriding {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Cat c=new Cat(); //object of child class
		Dog d=new Dog(); //object of child class
		d.makesound();
		c.makesound();
		

	}

}
/*Output:
Dog is Barking
Cat say meow
*/