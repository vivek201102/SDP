import 'package:lab2_tutorial3/lab2_tutorial3.dart' as lab2_tutorial3;

void main() {
  
  //Tutorial 3
  
/*
  //Data type
  int myInteger = 5;
  double myDouble = 6.2354;

  final int myInteger = 10;
  final double myDouble = 3.14;
  
  const myInteger = 10;
  const myDouble = 3.14;

  num myNumber = 3.14;
  print(myNumber is double); //true
  print(myNumber is int);  //False
  print(myNumber.runtimeType); //double

  double decimal = 5.35;
  int interger = decimal.toInt();
  print(interger);
*/

/*
  //Constant datatype & Final datatype
  const hourlyRate = 19.5;
  const hoursWorked = 10;
  // const totalCost = hourlyRate * hoursWorked;
  // const totalCost = (hourlyRate * hoursWorked).toInt();  //Error
  final totalCost = (hourlyRate * hoursWorked).toInt();
  print(totalCost);

  const wantDouble = 3;
  final toDouble = 3.toDouble();
  const wantDouble_new = 3.0;

*/

/*
  //Casting down
  num someNumber = 3;
  //print(someNumber.isEven); // Error isEven is not defined

  final someInt =  someNumber as int;
  print(someInt.isEven);

*/

/*


  //Cating down
  num someNumber = 3;
  //final someDouble = someNumber as double; // type 'int' is not a subtype of type 'double' in type cast
  final someDouble = someNumber.toDouble();
  print(someDouble); 

*/

/*
  //Mini Exercise
  const age1 = 42; //Type: int
  const age2 = 21; //Type: int
  const averageAge = age1 + age2 / 2; //Type: double

*/

/*

  //Strings
  var greeting = "Hello Dart"; //Type String
  print(greeting);
  greeting = "Hello Flutter"; //String is literate


  const letter = 'a';

  var st = 'Single quotes';
  var st1 = "Double quotes";

  //We should practice for double quotes
  var st2 = "my cat's food";
  var st3 = 'my cat\'s food';

*/

/*

  //Concatenation
  var message = "Hello" + " my name is ";
  const name = "Ray";
  message += name;
  print(message);



  //string buffer
  final message = StringBuffer();
  message.write("Hello! ");
  message.write("My name is ");
  message.write("Virat");
  message.write(" THE KING KOHLI");
  print(message);
  //Hello! My name is Virat THE KING KOHLI

*/

/*
  //Interpolation
  const name = "RAY";
  const introduction = "My name is $name";
  print(introduction);//My name is RAY

  const oneThird = 1/3;
  const sentence = "One third of one is $oneThird";
  final sentence_new = "One third of one is ${oneThird.toStringAsFixed(3)}";
  print(sentence); //One third of one is 0.3333333333333333
  print(sentence_new); //One third of one is 0.333
*/

/*
  //Multiple line string
  const bigString = '''You can have string that multiple
  lines by
  doing this
  ''';
  print(bigString); //You can have string that multiple
                    //lines by
                    //doing this
  
  //One line string
  const oneLine = 'This is only'
  'Line at run'
  ' time';

  const oneLineOtherWay = 'This is only' +
  'Line at run' +
  ' time';
  print(oneLine); //This is onlyLine at run time
  print(oneLineOtherWay); //This is onlyLine at run time

  const twoLines = "This is\nTwo lines";
  print(twoLines); //This is
                   //Two lines

*/

/*
  //Raw String
  const name = "Ray";
  const rawString = r'My name is \n $name';
  print(rawString); //My name is \n $name
*/

/* 
  //Mini Exercise
  const firstName = "Vivek";
  const lastName = "Patel";
  const fullName = firstName + ' ' + lastName;
  print(fullName);  //Vivek Patel
  const myDetails = "Hello, my name is $fullName";
  print(myDetails); //Hello, my name is Vivek Patel

*/
/*
  //Object and dynamic type
  //var myVariable = 42;
  //myVariable = "hello"; //Compile time error

  // var myVariable;
  // myVariable = 42;      //Allowed
  // myVariable = "Hello"; // Allowed


  Object? myVariable = 42; //Allowed
  myVariable = "Hello"; //Allowed

*/

/*
  //Challanges


  /*
    //Challange 1
    const attendence = 90;
    const homework = 80;
    const exam = 94;

    int grade = (attendence * 0.2 + homework * 0.3 + exam * 0.5).toInt();
    print(grade); // 89%
  
  */


  /*
    //Challange 2
    const name = "Ray";
    name += "Wenderlich"; //Error: Can't assign to the const variable 'name'.
    //Const value can't be changed.
  */

  /*
    //Challange 3
    const value = 10 / 2 ; //Type: Double

  */

  /*
    //Challange 6
    const number = 10;
    const multiplier = 5;
    final summary = '$number * $multiplier = ${number * multiplier}';
    print(summary); // 10 * 5 = 50
  */
  
*/

}
