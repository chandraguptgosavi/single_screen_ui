import 'package:flutter/material.dart';
import 'package:single_screen_ui/ui/screens/home.dart';
import 'package:single_screen_ui/values/strings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Strings.app_name,
      // theme: ThemeData(
        
      // ),
      home: HomePage(),
    );
  }
}


