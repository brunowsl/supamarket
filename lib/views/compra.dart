// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CompraView extends StatelessWidget {
  const CompraView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(0xFF369e6f),
        ),
        title: const Text(
          'Nova Compra',
          style: TextStyle(
            color: Color(0xFF369e6f),
          ),
        ),
        backgroundColor: Colors.black87,
      ),
      body: Container(
        color: Colors.black87,
      ),
    );
  }
}
