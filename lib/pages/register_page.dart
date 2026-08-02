import 'dart:developer';

import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    log("This from Register Page");

    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.deepPurpleAccent),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          spacing: 20,
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

                Text("Egypt", style: TextStyle(fontSize: 18)),

                SizedBox(width: 20),
                Icon(Icons.language_rounded, size: 30),
              ],
            ),
            Text("I'am New Here", style: TextStyle(fontSize: 24)),
            RegisterTextBox(name: "First name"),
            RegisterTextBox(name: "Last name"),
            RegisterTextBox(name: "Email address"),
            RegisterTextBoxWithIcon(
              name: "Placeholder",
              icon: Icons.abc_outlined,
            ),
            RegisterTextBoxWithIcon(
              name: "Password 6 18",
              icon: Icons.access_alarms_sharp,
            ),

            Divider(),

            Row(
              children: [
                Checkbox(value: true, onChanged: (value) {}),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    "This is the Important thing sThis is the Important thing sThis is the Important thing s",
                    style: TextStyle(fontSize: 16),
                    maxLines: 2,
                  ),
                ),
              ],
            ),

            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 12),
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  "رجوع",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            Spacer(),
            Wrap(
              alignment: WrapAlignment.center,
              spacing: 5,
              children: [
                Text(
                  "Terms of use",
                  style: TextStyle(fontSize: 16, color: Colors.blue),
                ),
                Text(
                  "Terms of use",
                  style: TextStyle(fontSize: 16, color: Colors.blue),
                ),
                Text(
                  "Terms of use",
                  style: TextStyle(fontSize: 16, color: Colors.blue),
                ),
                Text(
                  "Terms of use",
                  style: TextStyle(fontSize: 16, color: Colors.blue),
                ),
                Text("&", style: TextStyle(fontSize: 16)),
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

class RegisterTextBox extends StatelessWidget {
  const RegisterTextBox({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      width: double.infinity,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        border: Border.all(),
      ),
      child: Text(name, style: TextStyle(fontSize: 20)),
    );
  }
}

class RegisterTextBoxWithIcon extends StatelessWidget {
  const RegisterTextBoxWithIcon({
    super.key,
    required this.name,
    required this.icon,
  });

  final String name;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        border: Border.all(),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(name, style: TextStyle(fontSize: 20)),

          Icon(icon, color: Colors.purple),
        ],
      ),
    );
  }
}
