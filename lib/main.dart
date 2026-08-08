import 'package:flutter/material.dart';
import 'package:lessons_app/pages/home_page.dart';
import 'package:lessons_app/pages/login_page.dart';
import 'package:lessons_app/pages/profile_page.dart';
import 'package:lessons_app/pages/register_page.dart';
import 'package:lessons_app/pages/test.dart';

void main(List<String> args) {
  runApp(VerveApp());
}

class VerveApp extends StatelessWidget {
  const VerveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => TestPage(),
        "/login": (context) => LoginPage(),
        "/register": (context) => RegisterPage(),
        "/profile": (context) => ProfilePage(),
      },

      onUnknownRoute: (settings) =>
          MaterialPageRoute(builder: (context) => NOtFound404()),
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

class NOtFound404 extends StatelessWidget {
  const NOtFound404({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Sorry 404", style: TextStyle(fontSize: 40))),
    );
  }
}

class ProdcutPage extends StatelessWidget {
  const ProdcutPage({super.key, required this.id});
  final int id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("$id", style: TextStyle(fontSize: 40))),
    );
  }
}
