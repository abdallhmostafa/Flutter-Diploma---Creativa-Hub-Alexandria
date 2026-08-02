import 'package:flutter/material.dart';
import 'package:lessons_app/pages/home_page.dart';
import 'package:lessons_app/pages/login_page.dart';

void main(List<String> args) {
  runApp(VerveApp());
}

class VerveApp extends StatelessWidget {
  const VerveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      theme: ThemeData(
        colorSchemeSeed: Colors.deepPurpleAccent,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        colorSchemeSeed: Colors.deepPurpleAccent,
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.light,
    );
  }
}
