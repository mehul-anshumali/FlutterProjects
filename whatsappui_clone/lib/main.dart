import 'package:flutter/material.dart';
import 'package:whatsappui_clone/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff128C7E),
        accentColor: Color(0xff25D366),
      ),
      home: Home(),
    );
  }
}
