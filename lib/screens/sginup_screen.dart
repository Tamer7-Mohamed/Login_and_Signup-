import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';
import 'login_screen.dart';

class SginupScreen extends StatelessWidget {
  const SginupScreen({super.key});

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
          const SizedBox(height: 70),
          const Text(
            'SIGN UP',
            style: TextStyle(
              fontSize: 24,
              color: Color(0xFF50D1C4),
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          const CustomTextField(hintText: 'Email'),
          const CustomTextField(hintText: 'Password', obscureText: true),
          const CustomTextField(
              hintText: 'Confirm Password', obscureText: true),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '                    ',
                  style: TextStyle(
                      color: Color(0xFF50D1C4),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                CustomButton(text: 'Sign Up', onPressed: () {}, width: 150),
              ],
            ),
          ),
          const SizedBox(height: 20),
          CustomButton(
              text: 'Login',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()));
              },
              width: double.infinity),
        ],
      ),
    );
  }
}
