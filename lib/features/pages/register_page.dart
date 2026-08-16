import 'dart:developer';

import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _isChecked = false;

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    log("This from Register Page");

    return Scaffold(
      appBar: AppBar(title: Text("Register Page")),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    spacing: 16,
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

                          Text("Egypt", style: TextStyle(fontSize: 18)),

                          SizedBox(width: 20),
                          Icon(Icons.language_rounded, size: 30),
                        ],
                      ),
                      Text("I'am New Here", style: TextStyle(fontSize: 24)),
                      RegisterTextFormField(
                        labelText: "First name",
                        controller: _firstNameController,
                      ),
                      RegisterTextFormField(
                        labelText: "Last name",
                        controller: _lastNameController,
                      ),
                      RegisterTextFormField(
                        labelText: "Email address",
                        controller: _emailController,
                      ),
                      RegisterTextFormFieldWithIcon(
                        lableText: "Placeholder",
                        icon: Icons.abc_outlined,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Placeholder is required";
                          }
                          return null;
                        },
                      ),
                      RegisterTextFormFieldWithIcon(
                        lableText: "Password 6 18",
                        controller: _passwordController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Password is required";
                          }
                          return null;
                        },
                        icon: Icons.access_alarms_sharp,
                      ),

                      Divider(),

                      CheckboxMenuButton(
                        style: ButtonStyle(
                          shape: WidgetStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        value: _isChecked,
                        onChanged: (value) {
                          setState(() {
                            _isChecked = value ?? false;
                          });
                        },
                        child: Text("I agree to the terms and conditions"),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {
                            Navigator.maybePop(context);
                          },
                          child: Text(
                            "Don't have an account?",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState?.validate() ?? false) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    backgroundColor: Colors.green,
                                    behavior: SnackBarBehavior.floating,
                                    content: Text(
                                      _emailController.text,
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                );
                                Navigator.pushNamedAndRemoveUntil(
                                  context,
                                  '/',
                                  (route) => false,
                                );
                              }
                            },
                            child: Text("Sign in"),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              _emailController.clear();
                              _passwordController.clear();
                              _firstNameController.clear();
                              _lastNameController.clear();
                            },
                            child: Text("Clear the field data"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
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
      ),
    );
  }
}

class RegisterTextFormField extends StatelessWidget {
  const RegisterTextFormField({
    super.key,
    required this.labelText,
    required this.controller,
    this.validator,
  });
  final String labelText;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator:
          validator ??
          (value) {
            if (value == null || value.isEmpty) {
              return "This field can not be empty";
            }

            return null;
          },
      textInputAction: TextInputAction.search,
      keyboardType: TextInputType.number,

      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Colors.lightGreen),
        ),
      ),
    );
  }
}

class RegisterTextFormFieldWithIcon extends StatelessWidget {
  const RegisterTextFormFieldWithIcon({
    super.key,
    required this.lableText,
    required this.icon,
    this.controller,
    this.validator,
  });

  final String lableText;
  final IconData icon;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,

      decoration: InputDecoration(
        labelText: lableText,
        border: OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Colors.lightGreen),
        ),
      ),
    );
  }
}
