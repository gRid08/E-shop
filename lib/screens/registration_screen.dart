import 'package:flutter/material.dart';

import 'package:e_shop_pingolearn/screens/products.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});
  static String id = "signup_screen";

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

const int white = 0xFFF5F9FD;
const int blue = 0xFF0C54BE;
const int grey = 0x00CED3DC; //0x00CED3DC
const int navyBlue = 0xFF303F60;

class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  String _email = '';
  String _password = '';
  late BuildContext _storedContext;

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter an email address.';
    }
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a password.';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(grey),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const Text(
                "e-Shop",
                style: TextStyle(
                    color: Color(blue),
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    fontSize: 35.0),
              ),
              const SizedBox(
                height: 40.0,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12.0)),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: TextField(
                        keyboardType: TextInputType.name,
                        cursorColor: Colors.black87,
                        onChanged: (value) {},
                        decoration: const InputDecoration(
                          hintText: "Name",
                          hintStyle: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                              color: Colors.black87),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide.none, // Remove the default border
                          ),
                        ),
                        style: const TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12.0)),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        cursorColor: Colors.black87,
                        onChanged: (value) {},
                        decoration: const InputDecoration(
                          hintText: "Email",
                          hintStyle: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                              color: Colors.black87),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide.none, // Remove the default border
                          ),
                        ),
                        style: const TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12.0)),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: TextField(
                        obscureText: true,
                        cursorColor: Colors.black87,
                        onChanged: (value) {},
                        decoration: const InputDecoration(
                          hintText: "password",
                          hintStyle: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                              color: Colors.black87),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide.none, // Remove the default border
                          ),
                        ),
                        style: const TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(children: <Widget>[
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(blue),
                      foregroundColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6.0))),
                      //fixedSize: const Size(60.0, 35.0),
                      minimumSize: const Size(200.0, 50.0),
                      textStyle: const TextStyle(
                          fontSize: 24.0,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700)),
                  child: const Text('Signup'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'Already have an account?',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: 18.0),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                          foregroundColor: const Color(blue)),
                      onPressed: () {},
                      child: const Text(
                        'Login',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            fontSize: 18.0),
                      ),
                    )
                  ],
                )
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
