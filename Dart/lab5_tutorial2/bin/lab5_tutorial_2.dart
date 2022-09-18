import 'package:lab5_tutorial_2/lab5_tutorial_2.dart' as lab5_tutorial_2;

void main(List<String> arguments) {
  print('ch 9: Advanced classes');

  // Extending classes
  /*
      - You can create your own hierarchies by extending classes
      - This is also called inheritance, because the classes form a tree in which child
        classes inherit from parent classes.
      - The parent and child classes are also called super classes and subclasses respectively
      - The Object class is the top superclass for all non-nullable types in Dart. 
        All other classes (except Null) are subclasses of Object.

      =>  Creating your first subclass
          class Person {
            Person(this.givenName, this.surname);
            String givenName;
            String surname;
            String get fullName => '$givenName $surname';
            @override
            String toString() => fullName;
          }

          class Student extends Person { 
            Student(String givenName, String surname)
            : super(givenName, surname);
            var grades = <Grade>[];
          }

          ->  The constructor parameter names don’trefer to this
              anymore. Whenever you see the keyword this, you 
              should remember that this refers to the current object, 
              which in this case would be an instance of the Student
              class. Since Studentno longer contains the field names 
              givenName and surname, using this.givenName or
              this.surname would have nothing to reference.

          ->  In contrast to this, the super keyword is used to refer 
              one level up the hierarchy. Similar to the forwarding 
              constructor that you learned about in Chapter 6, using 
              super(givenName, surname) passes the constructor 
              parameters on to another constructor. However, since 
              you’re using super instead of this, you’re forwarding 
              the parameters to the parent class’s constructor, that is, 
              to the constructor of Person.

    // Calling super last in an initializer list
      class SomeChild extends SomeParent {
        SomeChild(double height)
        : assert(height != 0), // assert
        _height = height, // initializer
        super(); // super
        final double _height;
      }

    // Overriding parent methods
      @override
      String get fullName => '$surname, $givenName';

    // Calling super from an overridden method
      class SomeParent { 
        void doSomeWork() {
          print('parent working');
        }
      }
      class SomeChild extends SomeParent { 
        @override
        void doSomeWork() { 
          super.doSomeWork();
          print('child doing some other work');
        }
      }

      final child = SomeChild();
      child.doSomeWork();

      // Multi-level hierarchy
        class SchoolBandMember extends Student {
          SchoolBandMember(String givenName, String surn 
          ame)
          : super(givenName, surname);
          static const minimumPracticeTime = 2;
        }

      // Sibling classes
        class StudentAthlete extends Student {
          StudentAthlete(String givenName, String surname)
          : super(givenName, surname);
          bool get isEligible =>
          grades.every((grade) => grade != Grade.F);
        }

    */

  print("\n*****Mini-exercise 1*****");

  /*
    1. Create a class named Fruit with a String field named 
    color and a method named describeColor, which uses 
    color to print a message.
  */
  Fruit ft = Fruit("Red");
  ft.describeColor();

  print("\n*****Mini-exercise 2,3*****");
  /*
    2. Create a subclass of Fruit named Melon and then create 
    two Melon subclasses named Watermelon and 
    Cantaloupe.
  */
  final melon = Melon("Cyan");
  final wm = Watermelon("Green");
  final cl = Cantaloupe("Yellow");
  melon.describeColor();
  wm.describeColor();
  cl.describeColor();

  // print("\n*****Mini-exercise 3*****");
  /*
    3. Override describeColorin the Watermelon class to vary 
    the output.
  */

  // Abstract classes
  /*
      The classes and subclasses you created in the last section 
      were concrete classes

      // Creating your own abstract classes
        abstract class Animal { 
          bool isAlive = true; 
          void eat();
          void move();
          @override
          String toString() {
            return "I'm a $runtimeType";
          }
        }

      The way you define an abstract class in Dart is to put the
      abstract keyword before class.

      In addition to the class itself being abstract, Animal also 
      has two abstract methods: eat and move. You know 
      they’re abstract because they don’t have curly braces; 
      they just end with a semicolon.

      //  Can’t instantiate abstract classes  
        As mentioned, you can’t create an instance of an abstract class

    */

  print("*****Mini-exercise 1,2,3,4*****");
  /*
    1. Create an interface called Bottle and add a method to it 
    called open.
  */
  /*
    2. Create a concrete class called SodaBottle that 
    implements Bottle and prints “Fizz fizz” when open is 
    called.
  */
  /*
    3. Add a factory constructor to Bottle that returns a
    SodaBottle instance
  */
  /*
    4. Instantiate SodaBottle by using the Bottle factory 
    constructor and call open on the object.
  */

  final bottle = Bottle();
  bottle.open();

  print("\n*****Mini-exercise 1*****");
  /*
    1. Create a class called Calculator with a method called
    sum that prints the sum of any two integers you give it.
  */
  final calc = Calc();
  calc.sum(5, 8);

  print("\n*****Mini-exercise 2,3*****");
  /*
    2. Extract the logic in sum to a mixin called Adder.
  */
  final cal = Calculator();
  cal.sum(4, 10);
  /*
    3. Use the mixin in Calculator.
  */

  // key points
  /*
    -> A subclass has access to the data and methods of its 
       parent class.
    ->  You can create a subclass of another class by using the
        extends keyword.
    ->  A subclass can override its parent’s methods or 
        properties to provide custom behavior.
    ->  Dart only allows single inheritance on its classes.
        Abstract classes define class members and may or 
        may not contain concrete logic.
    ->  Abstract classes can’t be instantiated.
    ->  One rule of clean architecture is to separate business 
        logic from infrastructure logic like the UI, storage,
        third- party packages and the network.
    ->  Interfaces define a protocol for code communication. 
    ->  Use the implements keyword to create an interface.
    ->  Mixins allow you to share code between classes.
    ->  Extension methods allow you to give additional 
        functionality to classes that are not your own
*/
  print("\n*****Challenge 1*****");
  /*
    Challenge 1: Heavy monotremes
    Dart has a class named Comparable, which is used by the the 
    sort method of List to sort its elements. Add a weight field 
    to the Platypus class you made in this lesson. Then make 
    Platypus implement Comparable so that when you have a 
    list of Platypus objects, calling sort on the list will sort 
    them by weight.
  */
  final willi = Platypus(weight: 1.0);
  final billi = Platypus(weight: 2.4);
  final nilli = Platypus(weight: 2.1);
  final jilli = Platypus(weight: 0.4);
  final silli = Platypus(weight: 1.7);

  final platypi = [willi, billi, nilli, jilli, silli];

  platypi.forEach((platypus) => print(platypus.weight));
  print('---');

  platypi.sort();
  platypi.forEach((platypus) => print(platypus.weight));

  print("\n*****Challenge 2*****");
  /*
    Challenge 2: Fake notes
    Design an interface to sit between the business logic of your 
    note-taking app and a SQL database. After that, implement a 
    fake database class that will return mock data.
  */
  final database = DataStorage();
  final note = database.findNote(42);
  final allNotes = database.allNotes();
  database.saveNote('Water the flowers.');
  print(note);
  print(allNotes);

  print("\n*****Challenge 3*****");
  /*
    Challenge 3: Time to code
    Dart has a Duration class for expressing lengths of time. 
    Make an extension on int so that you can express a duration 
    like so:
    final timeRemaining = 3.minutes;
  */
  final timeRemaining = 3.minutes;
  print(timeRemaining);
}

class Fruit {
  Fruit(this.color);
  final color;
  void describeColor() {
    print("color is: $color");
  }
}

class Melon extends Fruit {
  Melon(String color) : super(color);
}

class Watermelon extends Melon {
  Watermelon(String color) : super(color);
  @override
  void describeColor() {
    print("this is overriden method, color is: $color");
  }
}

class Cantaloupe extends Melon {
  Cantaloupe(String color) : super(color);
}

abstract class Bottle {
  factory Bottle() => sodaBottle();
  void open();
}

class sodaBottle implements Bottle {
  @override
  void open() {
    print('Fizz Fizz');
  }
}

class Calc {
  void sum(num a, num b) {
    print("sum: ${a + b}");
  }
}

class Calculator with Adder {}

mixin Adder {
  void sum(num a, num b) {
    print('The sum is: ${a + b}');
  }
}

class Platypus extends Animal with EggLayer implements Comparable {
  Platypus({this.weight});
  final weight;

  @override
  void eat() {
    print('Munch munch');
  }

  @override
  void move() {
    print('Glide glide');
  }

  @override
  int compareTo(other) {
    if (weight > other.weight) {
      return 1;
    } else if (weight < other.weight) {
      return -1;
    }
    return 0;
  }
}

mixin EggLayer {
  void layEggs() {
    print('Plop plop');
  }
}

abstract class Animal {
  bool isAlive = true;
  void eat();
  void move();

  @override
  String toString() {
    return "I'm a $runtimeType";
  }
}

abstract class DataStorage {
  factory DataStorage() => FakeDatabase();
  String findNote(int id);
  List<String> allNotes();
  void saveNote(String note);
}

class FakeDatabase implements DataStorage {
  @override
  String findNote(int id) {
    return 'This is a note.';
  }

  @override
  List<String> allNotes() {
    return [
      'This is a note.',
      'This is another note.',
      'Buy milk.',
      'Platypuses are nice.',
    ];
  }

  @override
  void saveNote(String note) {
    // Saving note to cyberspace....
  }
}

extension on int {
  Duration get minutes => Duration(minutes: this);
}
