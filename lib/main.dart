import 'package:e_shop_pingolearn/screens/login_screen.dart';
import 'package:e_shop_pingolearn/screens/products.dart';
import 'package:e_shop_pingolearn/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import '';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xFFCED3DC),
          body: SignInScreen(),
        ),
      ),
    );
  }
}
