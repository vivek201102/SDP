// import 'package:lab2_tutorial2/lab2_tutorial2.dart' as lab2_tutorial2;
// import 'dart:math';
import 'dart:math';

void main(List<String> arguments) {

/*

  //Comments
  
  /*
  //This is a single line comment if we press enter than it will be not considered as the comment
    // This is comment. 
    It is not executed.
  
  */

  //For writing comments in multiple line we can use single line comment at every line.
    //This is also comment
    //Over multiple lines.
  

  //Muliple line comment is use for writing multiple lines as a comment
    /* This is also comment. Over many...
    many....
    many lines */
  
  //We can write nested comment. It will refer as comment has another comment.
    /* This is a comment.
    /* And inside it is
    another comment. */
    Back to the first. */


  //Single line Documentation comment. To write multiple line as a documentation comment we can write sigle line documentation comment at every line.
    ///I am a documentation comment
    ///at yout service
  
  //Multiple line Documentation comment for writing many line as documentation comment.
  /**
   * Me, too!
   */

*/


/*
  //Print

  //To print output on the console. After writing the data it will send the cursor to new line.
  print("Hello, Dart!");
  print("It will goes to new line");

*/


/*

  //Statement

  //Statment is command, that tell the computer to do.

  //Simple statement - ends with the semicolon (;)
  print("Simple statement example");

  /*
    //Complex statement - no semicolon need at the end. Opening and closing curly braces it start and end
    if(someCondition)
    {
      //code block
    }
  */

*/


/*


  //Expressions

  //Unlike statement expression doesn't do something it is something
  
  //Values can be number
  42;

  //Some operations
  3 + 2;
  "Hello, Dart Apprentice reader";
  
  /*
  //variable are also expression, here x is variable
  x
  */


*/


/*

  //Arithmetic operations

  //Add +
  2 + 6;
  print(2 + 6);

  //Subtact -
  10 - 2;
  print(10 - 2);

  //Multiply *
  2 * 4;
  print(2 * 4);


  //Divide /
  24 / 3;
  print(24 / 3);

*/


/*
  //Decimal numbers

  //If you will perform 22/7 it will give you 3.14285714.. not 3. Dart gives you the standard decimal answer.
  22/7;
  print(22/7);

  //If you did not want to perform interger division then you could use ~/ operator
  22~/7;
  print(22~/7);

  //Euclidean modulo operation (%)
  28%10;
  print(28%10);

*/

/*

  //Order of operation
  ((8000 / (5 * 10)) - 32) ~/ (29 % 5);
  print(((8000 / (5 * 10)) - 32) ~/ (29 % 5));

  /*Higer precedence operator gets executed first
  Divide (/) has higher precedence than (+) so answer of 350 / 5 + 2 = 72 not 50
  ~/ and % has the same precedunce as multiplication and division */
  350 / 5 + 2;

*/


/*
  //Math function

  //To use math functions "import 'dart:math'" is needed
  //dart:math is core libraries of dart.

  //Trigo functions
  sin(45 * pi / 180); //0.707106...
  cos(135 * pi / 180); // -0.707106...

  //Square root - sqrt()
  sqrt(2); //1.4142135...

  //Maximum and minimum
  max(5,10); // 10
  min(-5, -10); // -10


*/


/*
  //Naming Conventions

  //Characters number _ and $ are allowed _ $ and number can not be at start
  int 12Abc; // Not allowed
  int _abc; // Not allowed
  int abc_123; //Allowed
  int abc$123; //Allowed

*/


/*

  //variables
  int num = 10;
  num = 15;
  double apple = 3.1429;

  //number as object
  print(10.isEven); // True
  print(3.14569.round()); // 3

  //Integer variable can not be assign with other datatype value
  int x = 5;
  // x = 3.25; // Not allowed

  //num - variable can be assign integer or double
  // num myNumber;
  // myNumber = 5;
  // print(myNumber);

  //dynamic datatype - variable can be assign any value
  dynamic myVariable;
  myVariable = 10;
  print(myVariable);
  myVariable = 3.14;
  print(myVariable);
  myVariable = "ten";
  print(myVariable);

  //var - assign data type as per value but after than it can be changed.
  var someNuber = 10;
  someNuber = 15;
  //someNuber = 15.526; //Not allowed
  var someString = "String";
  someString = "New";

  //const - after assigning value it is static
  const myConst = 10;
  // myConst = 0; //Not allowed change value

  //final constant - It will take values at runtime
  final hoursSinceMidNight = DateTime.now().hour;


*/

  
/*
  //Naming convension
  int newVariable;
  String numberOfPeople;

*/

/*
  //Increment and decrement
  var counter = 0;
  counter += 1;
  //counter incremented by 1
  counter -= 1;
  //counter decrement by 1
  counter++;
  counter--;

  double myValue = 10;
  myValue *= 3;
  myValue /= 2;

*/


/*

  //Challanges

  //Challange 1
  int myAge = 20;
  int dogs = 0;
  dogs++;

  //Challange 2
  int age = 16;
  print(age);
  age = 30;
  print(age);

  //Challange 3

  const x = 46;
  const y = 10;
  const answer1 = (x * 100) + y;
  const answer2 = (x * 100) + (y * 100);
  const answer3 = (x * 100) + (y / 100);

  //Challange 4
  const double rating1 = 3.56;
  const double rating2 = 8.79;
  const double rating3 = 6.45;

  const double averageRating = (rating1 + rating2 + rating3) / 3;
  print(averageRating);


  //Challange 5
  double a = 1;
  double b = -5;
  double c = 6;
  double root1 = (-b + sqrt(b*b - 4*a*c)) / 2 *a;
  double root2 = (-b - sqrt(b*b - 4*a*c)) / 2 *a;
  print(root1);
  print(root2);
  
*/

}
