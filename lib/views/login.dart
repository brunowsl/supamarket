// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black87,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'SUPAMARKET',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Colors.white70,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const CustomLoginInput(
                    tooltipMessage: 'Username', icon: Icons.person),
                const SizedBox(height: 10),
                const CustomLoginInput(
                    tooltipMessage: 'Password', icon: Icons.lock),
                const SizedBox(height: 20),
                SizedBox(
                  width: window.physicalSize.width / 1.5,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xFF369e6f),
                      ),
                    ),
                    child: const Text('Login'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomLoginInput extends StatelessWidget {
  const CustomLoginInput({
    super.key,
    required this.tooltipMessage,
    required this.icon,
  });

  final String? tooltipMessage;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: window.physicalSize.width / 1.5,
      child: TextField(
        style: TextStyle(
          color: Colors.white,
        ),
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: Color(0xFF369e6f),
          ),
          hintText: tooltipMessage,
          hintStyle: TextStyle(
            color: Color.fromARGB(255, 100, 100, 100),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromARGB(255, 70, 70, 70),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFF369e6f),
            ),
          ),
        ),
      ),
    );
  }
}
