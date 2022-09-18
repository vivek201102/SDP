import 'package:flutter/material.dart';
import 'package:lab10_tutorial02/pages/choose_location.dart';
import 'package:lab10_tutorial02/pages/home.dart';
import 'package:lab10_tutorial02/pages/loading.dart';


void main() => runApp(MaterialApp(
// home: Home(),
// initialRoute: '/home',
initialRoute: '/',

routes: {
'/' : (context) => Loading(),
'/home' : (context) => Home(),
'/location' : (context) => ChooseLocation()
},
)
);
