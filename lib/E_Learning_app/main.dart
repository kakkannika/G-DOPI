import 'package:flutter/material.dart';
import 'package:e_learning_app/E_Learning_app/screens/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'G-DOPI',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: WelcomeScreen(), 
    );
  }
}
