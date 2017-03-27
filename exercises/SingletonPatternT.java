// ----------------------
// SingletonPatternT.java
// ----------------------

// https://en.wikipedia.org/wiki/Singleton_pattern

final class SingletonPatternT {
    public static void main (String[] args) {
        System.out.println("SingletonPatternT.java");

    	assert Eager.only() == Eager.only();
    	assert Eager.only().f() == "Eager.f()";
        
    	assert Lazy.only() == Lazy.only();
    	assert Lazy.only().f() == "Lazy.f()";		

        System.out.println("Done.");}}
		
