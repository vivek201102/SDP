import 'dart:math';

import 'package:lab4_tutorial2/lab4_tutorial2.dart' as lab4_tutorial_2;

void main(List<String> arguments) {
  print('Ch 7: Nullability');

  // Null overview
  /*
      as of version 2.12, Dart decided to take null out of 
      the list and only put it back if you allow Dart to do so. This 
      feature is called sound null safety
    */

  // What null means
  // Null means “no value” or “absence of a value”

  // int postalCode = null;
  // above will give error like:
  // A value of type 'Null' can't be assigned to a variable of type 'int'.
  /*
      bool isPositive(int anInteger) {
        return !anInteger.isNegative;
      }

      // print(isPositive(null))
      // error: NoSuchMethodError: The getter 'isNegative' was called on null.
  */

  // Dart keyword null actually is a value in the sense that it’s an object
  /*  
    That is, the object null
    is the sole instance of the Null class. Because the Null class 
    doesn’t have a method called isNegative, you get a 
    NoSuchMethodError when you try to call null
  */

  // Nullable vs. non-nullable types
  /*
      Starting with version 2.12, Dart separated its types into 
      nullable and non-nullable. Nullable types end with a 
      question mark (?) while non-nullable types do not.
    */

  // Non-nullable types
  /*
        Dart types are non-nullable by default.
        trying to set a non-nullable type to null is a compile-time error:
          for ex. int postalCode = null; // error
      */

  // Nullable types
  /*  
        A nullable type can contain the nullvalue in addition to its own data type
        it ends with a question mark (?)
        int?: 3, null, 1, 7, 4, 5

        String? str = null;
        The question mark at the end of String? isn’t an operator 
        acting on the String type. Rather, String? is a whole new 
        type separate from String. String? means that the variable 
        can either contain a String or it can be null.

        Note: non-nullable type is a subtype of its nullable form

        For any nullable variable in Dart, if you don’t initialize it 
        with a value, it’ll be given the default value of null.

      */

  print("\n*****Mini-exercise 1*****");

  /*
    1. Create a String? variable called profession, but don’t 
    give it a value. Then you’ll have profession null. :]
  */
  String? profession;
  print(profession);

  print("\n*****Mini-exercise 2*****");
  /*
    2. Give profession a value of “basketball player”
  */
  profession = "basketball player";
  print(profession);

  // print("\n*****Mini-exercise 3*****");
  /*
    3. Write the following line and then hover your cursor over 
    the variable name. What type does Dart infer iLove to be?
  */
  const iLove = 'Dart'; //String

  // Handling nullable types

  /*
      String? name;
      print(name.length);

      error:  Error: Property 'length' cannot be accessed on 'String?' because it is potentially null.      
              Try accessing using ?. instead.
    */

  // Type promotion
  /*  
        The Dart analyzer, which is the tool that tells you what the 
        compile-time errors and warning are, is smart enough to tell 
        in a wide range of situations if a nullable variable is 
        guaranteed to contain a non-null value or not.
      */
  // String? name;
  // name = 'Ray';
  // print(name.length);  //3

  // Flow analysis

  // Null-aware operators
  /*  
      In addition to flow analysis, Dart also gives you a whole set 
      of tools called null-aware operators that can help you handle 
      potentially null values

      If-null operator (??)
        ->  If the value on the left isn’t null, 
            then use it; otherwise, go with the value on the right.

      Null-aware assignment operator (??=)
        ->
      Null-aware access operator (?.)
      Null-aware method invocation operator (?.)
      Null assertion operator (!) 
      Null-aware cascade operator (?..)
      Null-aware index operator (?[])
      Null-aware spread operator (...?)

    */

  // Initializing non-nullable fields
  /*
          Using initializers
          Using initializing formals
          Using an initializer list
          Using default parameter values
          Required named parameters
        */

  // The late keyword
  /*
         Using late means that Dart doesn’t initialize the variable right away

         It only initializes it when you access it the first time     
         This is also known as lazy initialization
          It’s like procrastination for variables.

        */
  print("\n*****Challenge 1*****");
  /*
          Challenge 1: Random nothings
          Write a function thatrandomly returns 42 or null. Assign 
          the return value of the function to a variable named result
          that will never be null. Give result a default of 0 if the 
          function returns null.
        */

  int? random_nothings() {
    dynamic value = [42, null];
    var random = new Random();
    int index = random.nextInt(2);
    return value[index];
  }

  int result = random_nothings() ?? 0;
  print(result);

  print("\n*****Challenge 2*****");
  /*
    Challenge 2: Naming customs
    People around the world have different customs for giving 
    names to children. It would be difficult to create a data class 
    to accurately represent them all, but try it like this:
    Create a class called Name with givenName and surname properties.
    Some people write their surname last and some write it first. 
    Add a Boolean property called surnameIsFirst to keep track of this.
    Not everyone in the world has a surname.
    Add a toString method that prints the full name.
  */

  Name n1 = Name(givenName: "Foram");
  Name n2 = Name(givenName: "Foram", surname: "Dalsaniya");
  Name n3 =
      Name(givenName: "Foram", surname: "Dalsaniya", surnameIsFirst: true);
  print(n1);
  print(n2);
  print(n3);
}

class Name {
  Name({required this.givenName, this.surname, this.surnameIsFirst = false});
  String givenName;
  String? surname;
  bool surnameIsFirst;

  @override
  String toString() {
    String name;
    if (surnameIsFirst == true) {
      if (surname != null) {
        name = surname! + " " + givenName;
      } else {
        name = givenName;
      }
    } else {
      if (surname != null) {
        name = givenName + " " + surname!;
      } else {
        name = givenName;
      }
    }
    return "Name($name)";
  }
}
