import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: Form(
              key: formKey,
              child: SingleChildScrollView(
                child: Padding(
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
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w600,
                              ),
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
                      TextFormField(
                        controller: emailController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "This field can not be empty";
                          }

                          return null;
                        },
                        textInputAction: TextInputAction.search,
                        decoration: InputDecoration(
                          labelText: "Email",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.brown),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.lightGreen),
                          ),
                        ),
                      ),

                      SizedBox(height: 20),
                      TextFormField(
                        autovalidateMode: AutovalidateMode.always,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "This field can not be empty";
                          }

                          return null;
                        },
                        textInputAction: TextInputAction.search,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        decoration: InputDecoration(
                          labelText: "Password",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.brown),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.lightGreen),
                          ),
                        ),
                      ),

                      SizedBox(height: 20),

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
                          Text(
                            "Forget password?",
                            style: TextStyle(fontSize: 16, color: Colors.blue),
                          ),
                        ],
                      ),

                      SizedBox(height: 20),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              if (formKey.currentState?.validate() ?? false) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    backgroundColor: Colors.green,
                                    behavior: SnackBarBehavior.floating,
                                    content: Text(
                                      emailController.text,
                                      style: TextStyle(
                                        fontSize: 30,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                );
                              }
                            },
                            child: Text("Sign in"),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              emailController.clear();
                            },
                            child: Text("Clear to the filed data"),
                          ),
                        ],
                      ),
                      SizedBox(height: 25),

                      Divider(),
                      SizedBox(height: 25),

                      Text(
                        "New to Verve",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
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
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
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
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }
}
