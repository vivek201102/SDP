import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
class ChooseLocation extends StatefulWidget {
  // const ChooseLocation({Key? key}) : super(key: key);
  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}
class _ChooseLocationState extends State<ChooseLocation> {

  @override
  Widget build(BuildContext context) {
    // print("Build function runs in choose location...");
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text('CHOOSE LOCATION'),
        centerTitle: true,
        elevation: 0,
      ),

    );
  }
}




/*
class ChooseLocation extends StatefulWidget {
// const ChooseLocation({Key? key}) : super(key: key);
  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}
class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;

  void getData() async{


    String username = await Future.delayed(Duration(seconds: 4), (){
      // print('Hello Flutter');
      // print("UNIVERSITY NAME : DDU");
      return "UNIVERSITY NAME : DDU";
    });

    String bio = await Future.delayed(Duration(seconds: 2), (){
      // print('Hello Flutter');
      // print("DDU IS THE GOOD UNIVERSITY IN GUJARAT");

      return "DDU IS THE GOOD UNIVERSITY IN GUJARAT";
    });

    print('$username -> $bio');
    // print("In getData ... after future call ...");
  }


  @override
  void initState(){
    super.initState();
    print("Init state function run in location");
    print("before getData call");
    getData();
    print("after getData call");
  }

  @override
  Widget build(BuildContext context) {
    print("BUILD FUNCTION IN CHOOSE LOCATION");
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose Location"),
      ),
      /*
      body:ElevatedButton(
        onPressed: (){
          setState(() {
            counter += 1;
          });
        },
        child: Text('Counter is $counter'),
      ),

       */

    );
  }
}

 */
/*
 */