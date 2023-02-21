import 'package:flutter/material.dart';
import 'package:supamarket/views/main.dart';
import 'package:supamarket/views/login/login.dart';

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
        scaffoldBackgroundColor: const Color(0xFF232323),
        useMaterial3: true,
      ),
      home: const LoginView(),
    );
  }
}
