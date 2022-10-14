import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:lab10_tutorial_2/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  // const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  // String? time = 'LOADING....';
  void setWorldTime() async{
    WordTime timeinstance =
        WordTime(location: 'kolkata', flag: 'india.png', url: 'Asia/Kolkata');
        await timeinstance.getTime();
        Navigator.pushReplacementNamed(context, '/home',arguments: {
          'location': timeinstance.location,
          'flag': timeinstance.flag,
          'time': timeinstance.time,
        });
        // setState(() {
        //   time = timeinstance.time;
        // });

  }

  @override
  void initState(){
    super.initState();
    setWorldTime();
    // getTime();
    // print('after getData call');
  }


  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   body: Text('LOADING SCREEN'),
    // );
    return Scaffold(
      // body: Padding(
      //   padding: EdgeInsets.all(60.0),
      //   child: Text('Loading...'),
      // ),
      backgroundColor: Colors.deepPurpleAccent,
      body: Center(
        child: SpinKitFadingCube(
          color: Colors.white,
          size: 50.0,
        ),
      ),
    );
  }
}
