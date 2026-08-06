import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:lessons_app/pages/register_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    "Verve",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                  ),
                ),

                Text(
                  "Select Country",
                  style: TextStyle(fontSize: 18, color: Colors.blue),
                ),

                SizedBox(width: 20),
                Icon(Icons.language_rounded, size: 30),
              ],
            ),
            SizedBox(height: 20),
            Text("Welcome Back", style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),

            Container(
              padding: EdgeInsets.all(16),
              width: double.infinity,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                border: Border.all(color: Colors.black38),
              ),
              child: Text(
                "Email",
                style: TextStyle(fontSize: 20, color: Colors.black38),
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(16),

              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                border: Border.all(color: Colors.black38),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Password",
                    style: TextStyle(fontSize: 20, color: Colors.black38),
                  ),

                  Icon(Icons.visibility),
                ],
              ),
            ),

            SizedBox(height: 20),

            Row(
              children: [
                Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2),
                  ),
                ),
                SizedBox(width: 10),
                Text("Remember me", style: TextStyle(fontSize: 16)),
                Spacer(),
                Text(
                  "Forget password?",
                  style: TextStyle(fontSize: 16, color: Colors.blue),
                ),
              ],
            ),

            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterPage()),
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 12),
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  "Sign In",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),

            Divider(),
            SizedBox(height: 25),

            Text(
              "New to Verve",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),

            Container(
              padding: EdgeInsets.symmetric(vertical: 12),
              width: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.black),
              ),
              child: Text(
                "Register",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              spacing: 10,
              children: [
                Text(
                  "Terms of use",
                  style: TextStyle(fontSize: 16, color: Colors.blue),
                ),
                Text("&", style: TextStyle(fontSize: 16, color: Colors.black)),
                Text(
                  "Privacy Policy",
                  style: TextStyle(fontSize: 16, color: Colors.blue),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
