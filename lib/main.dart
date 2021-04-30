import 'package:flutter/material.dart';
import 'package:new_tasks_ui/screens/home_page_widget.dart';
import 'package:new_tasks_ui/screens/screen2.dart';
import 'package:new_tasks_ui/screens/screen3.dart';
import 'package:new_tasks_ui/screens/screen4.dart';
import 'package:new_tasks_ui/screens/screen5.dart';

import 'screens/home_page_widget.dart';
import 'screens/home_page_widget.dart';
import 'screens/screen2.dart';
import 'screens/screen2.dart';
import 'screens/screen3.dart';
import 'screens/screen3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DemoProject',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: 'home',
      routes: {
        'home': (context) => HomePageWidget(),
        ScreenTwo.id: (context) => ScreenTwo(),
        ScreenThree.id: (context) => ScreenThree(),
        ScreenFour.id: (context) => ScreenFour(),
        ScreenFive.id: (context) => ScreenFive()
      },
    );
  }
}
