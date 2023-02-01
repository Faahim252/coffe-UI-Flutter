import 'package:flutter/material.dart';
import 'pages/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coffe Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.orange,
      ),
      home: MyHomePage(),
    );
  }
}
