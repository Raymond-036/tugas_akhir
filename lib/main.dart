import 'package:flutter/material.dart';
import 'package:infinite_learning/auth/login_page.dart';
import 'package:infinite_learning/home.dart';
import 'package:infinite_learning/splashscreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Infinite Learning',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Splashscreen(),
      routes: {
        '/home': (BuildContext context) => Home(),
        '/login': (BuildContext context) => LoginPage(),
      },
    );
  }
}
