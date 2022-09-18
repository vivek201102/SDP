import 'package:lab2_tutorial4/lab2_tutorial4.dart' as lab2_tutorial4;

/*
const global = 'Hello, world';
*/

/*
enum Weather {
  sunny,
  snowy,
  cloudy,
  rainy,
}

*/

/*
//Mini - exercise
enum AudioState {
  playing,
  paused,
  stopped
}

*/

void main() {
/* 
  //Boolean value
  const bool yes = true;
  const bool no = false;

  const Yes = true; //Type : Bool
  const No = false; //Type : Bool

*/

/*

  //Boolean Operator
  //const doesOneEqualTwo = (1 == 2); // Type : Bool
  //print(doesOneEqualTwo); //False

  const doesOneEqualTwo = 1 == 2; // Type : Bool
  print(doesOneEqualTwo); //False

  const doesOneNotEqualTwo = 1 != 2; // Type : Bool
  print(doesOneNotEqualTwo);//True


  const alsoTrue = !(1==2);
  print(alsoTrue); //True

*/

/*
  //Greater or lesser
  const isOneGreaterTwo = 1 > 2;
  const isOneLesserTwo = 1 < 2;
  print(isOneGreaterTwo); // Fasle
  print(isOneLesserTwo);  //True

  print(1 <= 2); //True
  print(2 <= 2); //True

*/

/*
  //Boolean logic

  //AND - Both need to true for true
  const isSunny = true;
  const isFinished = true;
  const willGoCycling = isSunny && isFinished;
  print(willGoCycling); // True


  //OR at least one should be true for true
  const willTravelToAustralia = true;
  const canFindPhoto = false;
  const canDrawPlatypus = willTravelToAustralia || canFindPhoto;
  print(canDrawPlatypus); //True


*/

/*
  //Operator prcedence
  print(1 < 2 && 4 > 3); //True
  print(1 < 2  && 3 > 4); //False
  print(1 < 2 || 3 > 4); //True
  print(1==2 || 3==4); //False
  print(3 > 4 && 1 < 2 || 1 < 4); //True
*/

/* 
  //Overriding precedence with parentheses
  print(3 > 4 && (1 < 2 || 1 < 4)); //false
  print((3 > 4 && 1 < 2) || 1 < 4); //true
*/

/*
  //String equality
  const guess = 'dog';
  const dogEqualsCat = guess == 'cat';
  print(dogEqualsCat); //False
*/

/*
  //Mini Exercise
  const myAge = 20;
  const isTeen = myAge > 12 && myAge < 20;
  const maryAge = 30;
  const isMaryTeen = maryAge > 12 && maryAge < 20;
  print(isTeen); //False
  print(isMaryTeen); //False

  const reader = "Vivek";
  const ray = "Ray Wenderlich";
  const isRayReader = reader == ray; //Fasle
  print(isRayReader);

*/

/*
  //If statement
  if(2>1)
  {
      print('Yes, 2 is greater than 1.');
  }


  //If else statement
  const animal = 'Fox';
  if (animal == 'Cat' || animal == 'Dog') {
      print('Animal is a house pet.');
  } 
  else {
      print('Animal is not a house pet.');
  }
  //Animal is not a house pet.


  const trafficLight = 'yellow';
  var command = '';
  if (trafficLight == 'red') {
    command = 'Stop';
  } 

  else if (trafficLight == 'yellow') {
    command = 'Slow down';
  } 

  else if (trafficLight == 'green') {
    command = 'Go';
  } 

  else {
    command = 'INVALID COLOR!';
  }

  print(command); //Slow down

*/

/*
  //Scopes

  const local = 'Hello, main';
  if (2 > 1) {
    const insideIf = 'Hello, anybody?';
    print(global); //Hello, world
    print(local); //Hello, main
    print(insideIf); // Hello, anybody?
  }

  print(global); //Hello, world
  print(local); //Hello, main
  //print(insideIf); // Not allowed!
*/

/*

  //Ternary conditional operator
  const score = 83;
  String message;
  /*
    if (score >= 60) {
      message = 'You passed';
    } 
    else {
      message = 'You failed';
    }
  */
  message = (score >= 60) ? 'You passed':'You failed';
  print(message); //You passed

*/

/*
  //Mini exercise
  const myAge = 20;
  String message;
  String ternaryMessage;
  if(myAge > 12 && myAge < 20)
    message="Teen";
  else
    message="Not Teen";
  (myAge > 12 && myAge < 20) ? ternaryMessage="Teen": ternaryMessage="Not Teen";
  print(ternaryMessage);

*/

/*
  //switch cases with numbers
  const number = 3;
  switch (number) {
    case 0:
      print('zero');
      break;
    case 1:
      print('one');
      break;
    case 2:
      print('two');
      break;
    case 3:
      print('three');
      break;
    case 4:
      print('four');
      break;
    default:
      print('something else');
  }

  //three

*/

/*

  //Switch cases in String
    const weather = 'cloudy';
    switch (weather) {
      case 'sunny':
        print('Put on sunscreen.');
        break;
      case 'snowy':
        print('Get your skis.');
        break;
      case 'cloudy':
      case 'rainy':
        print('Bring an umbrella.');
        break;
      default:
        print("I'm not familiar with that weather.");
    }

    //Bring an umbrella.
*/

/*
  //enums
  const weatherToday = Weather.rainy;
  switch (weatherToday) {
    case Weather.sunny:
      print('Put on sunscreen.');
      break;
    case Weather.snowy:
      print('Get your skis.');
      break;
    case Weather.cloudy:
    case Weather.rainy:
      print('Bring an umbrella.');
      break;
  }
  //Bring an umbrella.

  final index = weatherToday.index;
  print(index); // 3

*/

/*

  //Mini assignment
  const state = AudioState.playing;
 
  switch(state){
    case AudioState.playing:
      print("Music is playing");
      break;
    
    case AudioState.paused:
    print("Music has be paused");
    break;

    case AudioState.stopped:
    print("Music stopped");
    break;

  }

*/

}
