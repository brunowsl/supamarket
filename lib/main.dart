import 'package:flutter/material.dart';
import 'package:supamarket/views/main.dart';
import 'package:supamarket/views/login.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SUPAMARKET',
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginView(),
        '/home': (context) => const MainView(),
      },
      theme: ThemeData(
        primaryColor: const Color(0xFF369e6f),
        useMaterial3: true,
      ),
      home: const LoginView(),
    );
  }
}
