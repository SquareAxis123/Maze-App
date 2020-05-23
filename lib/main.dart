import 'package:flutter/material.dart';
import 'package:mazegame/pages/Loading.dart';
import 'package:mazegame/pages/home.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/':(context) => Loading(),
      '/home':(context) => Home(),
    },
  ));
}



