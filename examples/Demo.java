//non-static, static, anonymous
// Demo1: creates a class, Outer, create an instance of it, and call the method outerMethod 

class Outer {
	int o = 10;
	
	public void outerMethod(){
		System.out.println("o = " + o);
	}
}

	
public class Demo {
	public static void main(String[] args) {
		Outer outer = new Outer();
		outer.outerMethod();
		//o = 10 
	}
}


//Demo2: adding an inner class
class Outer {
	int o = 10;
	
	public void outerMethod(){
		System.out.println("o = " + o);
	}
	
	//inner class
	class Inner{
		int i=20;
				
		public void innerMethod()
		{
			System.out.println("i = " + i);
		}
	}

}

	
public class Demo {
	public static void main(String[] args) {
		Outer outer = new Outer();
		outer.outerMethod();
		//o = 10 
		
		/* How to create an instance of the inner class? 
              is the following possible?
	        
		   InnerClass inner = new InnerClass();
		   
		   This is not possible. 
              For an inner class it is not possible to create an 
		   object directly outside the outer class. 
		   To create an object of the inner class, 
		   you can create it within the scope of 
              the outer class. 
              (with the help of an outer class object) */

		Outer.Inner inner = outer.new Inner();
		inner.innerMethod();
		//i = 20


		}
}

//Demo3
/* Two types of nested classes:
	1) static: 
	e.g., static class Something
	- Rarely used since you cannot access all the members of 
        the outer class.
	(does not have access to other objects inside 
       the class itself.)

	2) non-static: is commonly known as inner class.
	e.g., class Something

	- has access to other objects inside the class itself.
	- gives a range of private and protected access modifier.
*/


class Outer {
	// the outerclass cannot directly access all
	// the members of the inner class (it can access
	// the members through an object)

	int o = 10;
	
	public void outerMethod(){
		
		System.out.println("In Outer Method...");
		System.out.println("o = " + o);
		Inner inner = new Inner();
		inner.innerMethod();
		//o = i + 1 Error! cannot access inner.
	}
	
	//inner class
	class Inner{
		// because it's non-static, inner class  
		// can access all the members of the outerclass 
		// without the help of a helper object.

		int i=20;
				
		public void innerMethod()
		{
			System.out.println("In inner method...");
			System.out.println("i = " + i);
			System.out.println("o = " + o);
		}
	}

}

	
public class Demo {
	public static void main(String[] args) {
		Outer outer = new Outer();
		outer.outerMethod();
		/*
			In Outer Method...
			o = 10
			In inner method...
			i = 20
			o = 10 
		*/
		
		
		Outer.Inner inner = outer.new Inner();
		inner.innerMethod();
		/*
			In inner method...
			i = 20
			o = 10
		*/
		}
}



//Demo4: static inner class
class Outer {
	int o = 10;
	
	public void outerMethod(){
		System.out.println("o = " + o);
	}
	
	//inner class
	static class Inner{
		int i=20;
				
		public void innerMethod()
		{
			System.out.println("i = " + i);
		}
	}

}

	
public class Demo {
	public static void main(String[] args) {
		Outer outer = new Outer();
		outer.outerMethod();
		//o = 10 
		
		// Since Inner is static, no need to use object of Outer.
		Outer.Inner inner = new Outer.Inner();
		inner.innerMethod();
		//i = 20


		}
}


//Demo5
class Outer {
	// the outerclass cannot directly access all
	// the members of the inner class (it can access
	// the members through an object)

	int o = 10;
	
	public void outerMethod(){
		
		System.out.println("In Outer Method...");
		System.out.println("o = " + o);
		//Inner inner = new Inner();
		//inner.innerMethod();
		//o = i + 1 Error! cannot access inner_x.
	}
	
	//inner class
	static class Inner{
		
		int i=20;
				
		public void innerMethod()
		{
			System.out.println("In inner method...");
			System.out.println("i = " + i);
			//System.out.println("o = " + o); 
		}
	}

}

	
public class Demo {
	public static void main(String[] args) {
		Outer outer = new Outer();
		outer.outerMethod();
		/*
			In Outer Method...
			o = 10
		*/
		
		
		Outer.Inner inner = new Outer.Inner();
		inner.innerMethod();
		/*
			In inner method...
			i = 20
			
		*/
		}
}



//Demo6
//Anonymous inner class
//consider the following example of polymorphism in Java

class One {
	int o = 10;
	
	public void oneMethod(){
		
		System.out.println("One");
		
	}
}	

class Two extends One{
		int t=20;
				
		public void oneMethod()
		{
			System.out.println("One and Two"); 
		}
}

	
public class Demo {
	public static void main(String[] args) {
		One obj = new Two();
		obj.oneMethod();
		// One and Two
		}
}

// I replaced the class Two with an anonymous inner class.
// So I have now only one class "One".
// After defining an object of "One", I define the method 
// by the end of the object definition line before ";"

class One {
	int o = 10;
	
	public void oneMethod(){
		
		System.out.println("One");
		
	}
}	

	
public class Demo {
	public static void main(String[] args) {
		One obj = new One()
		{ //beginning of anonymous inner class
			public void oneMethod()
			{
				System.out.println("One and Two"); 
			}
		}; //end of anonymous inner class
		obj.oneMethod();
		//One and Two
		}
}
