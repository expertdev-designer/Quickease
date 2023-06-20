import 'dart:async';
import 'package:flutter/material.dart';
import 'package:quikies/login_page.dart';
import 'package:quikies/splash_screen.dart';

final Color myCustomColor = const Color(0xCFEAFF);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Screen Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      routes: {
        '/login': (context) => LoginPage(),
      },
    );
  }
}
