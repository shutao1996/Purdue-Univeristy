import java.io.*;

class Main {

   public static void main(String args[]) {

      D d = new D( );

      d.foo((short) 1);

      d.foo(1);

      d.foo((short) 1, d, 1.0); 

      d.bar((short) 1, d, 1.0); 

      d.dPrint( );
   }
}

/*
 * 1. Cannot define a constructor in interface
 * 2. i is declared in interface I, there is an error because interface can only contain constants, cannot be reassigned in other class 
 * 3. it is static, because variables in an interface has to be a public static
 * 4. D calls "void foo(short)" from B class
 * 
 * 
 * 
 * 
 * 
 */

