import 'package:lab10_tutorial_2/pages/home.dart';
import 'package:lab10_tutorial_2/pages/loading.dart';
import 'package:lab10_tutorial_2/pages/choose_location.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  // home: Home(),
  // initialRoute: '/home',
  initialRoute: '/',
  routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
    '/location' : (context) => ChooseLocation(),
  },
));
