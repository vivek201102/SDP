import 'dart:io';
import 'dart:math';

void main() {

/*
  //While Loop - - condition has to be boolean
  /*
    while(condition)
    {
      //loop code
    }
  */


  //Simple while loop
  // while(true){}

  var sum = 1;

  while(sum < 10)
  {
    //loop code
    sum += 4;
    print(sum);
  }

*/

/*

  //do-while loop
  /*
    do{
      //loop code

    }while (condition);
  */

  int sum = 1;
  do{
    sum += 4;
    print(sum);
  }while(sum < 10);

*/

/*
  //Breaking out of a loop
  int sum = 1;
  while(true){
    sum += 4;

    if(sum > 10)
    {
      //break statement will break inner most loop
      break;
    }
  }

*/

/*
  //Random interlude
  final random = Random();
  //Random().nextInt(max) - this will generate the value at random in range of 6 of type int
  while (random.nextInt(6) + 1 != 6) {
    print('Not a six');
  }
*/
/*
  //For loops
  for(var i=0; i<5; i++)
  {
    print(i);
  }

  //Continue key word - it will not execute remaining statement of the loop but it will start from begining with condition check 
  for(var j=0; j<5; j++)
  {
    if(j==2)
      continue;
    print(j);
  }

  //for in loops
  const myString = "I love dart";
  for(var codePoint in myString.runes)
  {
    print(String.fromCharCode(codePoint));
  }

  //for each loop
  const myNumbers = [1,2,3];
  myNumbers.forEach((element)=> print(element));
  myNumbers.forEach((element){ print(element); });
*/

/*
  //Mini-exercises

  //Question 1
  var counter = 0;
  while(counter < 10)
  {
    print("Counter is $counter");
    counter++;
  }

  //Question 2
  for(var i=1; i<11; i++)
  {
    print(i*i);
  }

  //Question 3
  const numbers = [1,2,4,7];
  for(var num in numbers)
  {
    print(num * num);
  }

  //Question 4
  numbers.forEach((element)=>print(element * element));
*/

/*
  //Challange 1
  //Error : lastName is not accessible at outerside of the if condition
  const firstName = "Bob";
  if(firstName == "Bob")
  {
    const lastName = "Sith";
  }
  else if(firstName == "Ray")
  {
    const lastName = "Wenderlich";
  }
  // print(lastName); //->ERROR<-

  //Challange 2
  var andCondition = true && true;  //Boolean type 
  var orConditio = false || false; // Boolean type
  (true && 1!=2) || (4>3 && 100<1); //Boolean type
  ((10 / 2) > 3) && ((10 % 2) == 0); //Boolean type


  //Challange 3
  num number = 33;
  int power = 0;  
  while(number > 1)
  {
    number /= 2;
    power++;
  }

 
  print(power);


  //Challange 4 
  //Fibonaaci number
  int n = 8;
  int fibo = 1, n1 = 0, n2 = 1;

  for(int i=2; i<=n; i++)
  {
    print(fibo);
    fibo = n1 + n2;
    n1 = n2;
    n2 = fibo;
  }
  print(fibo);


  //Challange 5
  var sum = 0;
  for (var i = 0; i <= 5; i++) {
    sum += i;
  }
  //Value of sum = 15
  //6 time loop will be iterated (i = 0, 1, 2, 3, 4, 5)


  //Challange 6
  for(var i = 10; i>=0; i--)
  {
    stdout.write("$i ");
  }

*/

  //Challange 7
  for(dynamic i=0.0; i<=10; i++)
  {
    print(i/10);
  }
  

}
