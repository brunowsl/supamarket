import 'package:flutter/material.dart';
import 'package:supamarket/views/compra.dart';
import 'package:supamarket/views/home.dart';
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
        '/home': (context) => const HomeView(),
        '/compra': (context) => const CompraView(),
      },
      theme: ThemeData(
        primaryColor: const Color(0xFF369e6f),
      ),
      home: const LoginView(),
    );
  }
}
