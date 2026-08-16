import 'package:flutter/material.dart';
import 'package:lessons_app/features/pages/home_page.dart';
import 'package:lessons_app/features/pages/login_page.dart';
import 'package:lessons_app/features/pages/not_found_page.dart';
import 'package:lessons_app/features/pages/profile_page.dart';
import 'package:lessons_app/features/pages/register_page.dart';
import 'package:lessons_app/features/pages/splash_page.dart';

void main(List<String> args) {
  runApp(VerveApp());
}

class VerveApp extends StatelessWidget {
  const VerveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "splash",
      routes: {
        "/": (context) => HomePage(),
        "splash": (context) => SplashPage(),
        "/login": (context) => LoginPage(),
        "/register": (context) => RegisterPage(),
        "/profile": (context) => ProfilePage(),
      },

      onUnknownRoute: (settings) =>
          MaterialPageRoute(builder: (context) => NotFoundPage()),
      theme: ThemeData(
        colorSchemeSeed: Colors.deepPurpleAccent,
        brightness: Brightness.light,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.deepPurpleAccent,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(color: Colors.white),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurpleAccent,
            alignment: Alignment.center,
            textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ),
      darkTheme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.deepPurpleAccent,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(color: Colors.white),
        ),
        colorSchemeSeed: Colors.deepPurpleAccent,
        brightness: Brightness.dark,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurpleAccent,
            alignment: Alignment.center,
            textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ),
      themeMode: ThemeMode.light,
    );
  }
}
