// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomCardOverview extends StatelessWidget {
  final int qnt;
  const CustomCardOverview({super.key, required this.qnt});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black38,
      elevation: 5,
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Center(
            child: ListTile(
              leading: Icon(
                Icons.album_rounded,
                color: Color(0xFF369e6f),
                size: 40,
              ),
              trailing: Text(
                qnt.toString(),
                style: TextStyle(
                  color: Color(0xFF369e6f),
                  fontSize: 35,
                ),
              ),
              title: Text(
                'Overview',
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                'Qnt. de supermercados feitos',
                style: TextStyle(color: Color.fromARGB(255, 126, 126, 126)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
