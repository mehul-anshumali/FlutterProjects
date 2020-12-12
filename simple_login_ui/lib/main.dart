import 'package:flutter/material.dart';
import 'package:simple_login_ui/homeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LoginUI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.black,
        primarySwatch: Colors.grey,
      ),
      home: HomeScreen(),
    );
  }
}
