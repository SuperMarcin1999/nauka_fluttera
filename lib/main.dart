// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nauka_fluttera/pages/first_page.dart';
import 'package:nauka_fluttera/pages/home_page.dart';
import 'package:nauka_fluttera/pages/settings_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  var names = ["marcin", "jan", "kowal"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        'homePage': (context) => HomePage(),
        'settingsPage': (context) => SettingsPage(),
      },
    );
  }
}
