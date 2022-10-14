import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  var counter = 0;

  // void getData() async{
  //
  //   String username = await Future.delayed(Duration(seconds: 4), (){
  //     return 'UNIVERSITY NAME: DDIT';
  //   });
  //   // Future.delayed(Duration(seconds: 4), () {
  //   //   // print('Hello Everyone');
  //   //   print('UNIVERSITY NAME: DDIT');
  //   // });
  //   String bio = await Future.delayed(Duration(seconds: 2), (){
  //     return 'One of the best university in Gujarat';
  //   });
  //   // Future.delayed(Duration(seconds: 2), (){
  //   //   print('One of the best university in Gujarat');
  //   // });
  //   // print('in getData ...after future call...');
  //   print('$username -> $bio');
  // }
  //
  // @override
  // void initState(){
  //   super.initState();
  //   // print('before getData call');
  //   // print('INT STATE FUNCTION RUN IN CHOOSE LOCATION...');
  //   getData();
  //   // print('after getData call');
  // }

  @override
  Widget build(BuildContext context) {
    print('BUILD FUNCTION RUN IN CHOOSE LOCATION...');
    return Scaffold(
      backgroundColor: Colors.white60,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('CHOOSE LOCATION'),
        centerTitle: true,
        elevation: 0,
      ),
      // body: ElevatedButton(
      //   onPressed: (){
      //     setState((){
      //       counter += 1;
      //     });
      //   },
      //   child: Text('COUNTER IS: $counter'),
      // ),
    );
  }
}
