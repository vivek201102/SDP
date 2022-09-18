class MyClass{
  var myProperty;

  //constructor
  // MyClass([this.myProperty]);
  MyClass({this.myProperty});
  
  void myMethod(){
    print(myProperty);
  }

  @override
  String toString()
  {
    return "Myclass(myProperty: $myProperty)";
  }
}

class Sphere{
  const Sphere(this.radius);
  final int radius;
  static double pi = 3.14;
  
  double get getVolume{
    double volume = 4 * pi * radius * radius * radius / 3;
    return volume;
  }
  double get getSurface{
    double surface = 4 * pi * radius * radius;
    return surface;
    }

}



class User{
  // int id = 0;
  // String name = "";

  // User.anonymous(){
  //   id = 0;
  //   name = "anonymous";
  // }
  // User({this.id = 0, this.name = "anonymous"});

  // User.anonymous(): this();

  // User(int id, String name)
  // {
  //   this.id = id;
  //   this.name = name;
  // }
  const User({this.id = 0, this.name = "anonymous"}):assert(id>=0);
  const User.anonymous() : this();

  final String name;
  final int id;
  
  set name(String name) => this.name = name;
  
  @override
  String toString()
  {
    return ("User(id:$id, name: $name)");
  }

  String toJson()
  {
    return '{"id":$id, "name":$name}';
  }
}


//Mini exercise
// class Password{
//   String value = "";

//   @override
//   String toString()
//   {
//     return ("Password:{value:$value}");
//   }

//   bool isValid()
//   {
//     if(value.length > 8)
//     {
//       return true;
//     }
//     else{
//       return false;
//     }
//   }
// }

class Password{
  const Password(this.value);
  final String value;

  set value(String value)=>this.value = value;
  @override
  String toString() {
    return "Password(Value: $value)";
  }
}

class Student{
  Student(this.firstName, this.lastName, this.grade);
  final String firstName;
  final String lastName;
  final int grade;

  @override
  String toString() {
    // TODO: implement toString
    return "Student(First Name: $firstName, Last Name: $lastName, grade: $grade)";
  }
}

void main(List<String> arguments) {
  // final user = new User();
  // user.name = "Ray";
  // user.id = 42;

  // final user = User()
  // ..name = "Vivek"
  // ..id = 42;

  // print(user);

  // final pass = Password()
  // ..value = "Hello123.";

  // print(pass.isValid());

  // final user = User(25, "Yash");
  // print(user);
  // final anonymousUser = User.anonymous();
  // print(anonymousUser);

  // final myclass = MyClass(myProperty: "Hello");
  // final myclass2 = MyClass();
  // print(myclass);
  // print(myclass2);

  // final user = User(id: -5, name: "Vivek");
  // print(user);

  // final pass = Password("Hello@123");
  // print(pass);
  // pass.value="1234";

  // final bert = Student("Bert", "Watson", 95);
  // final ernie = Student("Ernie", "Yegar7", 85);
  // print(bert);
  // print(ernie);

  // const sphere = Sphere(12);
  // print(sphere.getSurface);
  // print(sphere.getVolume);

  // String? professional;
  // professional = "Basketball player";
  // print(professional);

  const iLove = 'Dart';
}
