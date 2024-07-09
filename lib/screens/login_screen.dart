import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';
import 'sginup_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 310,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF66BAD5),
                  Color(0xFF3AE8BB),
                  // Color(0xFF50D1C4),
                ],
              ),
            ),
          ),
          const SizedBox(height: 90),
          const Text(
            'LOGIN',
            style: TextStyle(
              fontSize: 24,
              color: Color(0xFF50D1C4),
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          const CustomTextField(hintText: 'Email'),
          const CustomTextField(hintText: 'Password', obscureText: true),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Forgot Password ?',
                  style: TextStyle(
                      color: Color(0xFF50D1C4),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                CustomButton(text: 'Login', onPressed: () {}, width: 150),
              ],
            ),
          ),
          const SizedBox(height: 20),
          CustomButton(
              text: 'Sign Up',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SginupScreen()));
              },
              width: double.infinity),
        ],
      ),
    );
  }
}
