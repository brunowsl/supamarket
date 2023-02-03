// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:supamarket/components/card.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SUPAMARKET made with ❤️'),
        backgroundColor: Colors.black87,
        iconTheme: IconThemeData(
          color: Color(0xFF369e6f),
        ),
      ),
      body: Container(
        color: Colors.black87,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                flex: 2,
                child: CustomCardOverview(),
              ),
              Expanded(
                flex: 10,
                child: ListView(
                  children: List.generate(10, (index) {
                    return ListTile(
                      leading: Icon(
                        Icons.shopping_cart_outlined,
                        color: Color(0xFF369e6f),
                        size: 40,
                      ),
                      trailing: Text(
                        'RS 15,00',
                        style: TextStyle(
                          color: Color(0xFF369e6f),
                          fontSize: 20,
                        ),
                      ),
                      title: Text(
                        'Compra de Lorraine',
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Text(
                        '22/10/2023',
                        style: TextStyle(
                            color: Color.fromARGB(255, 126, 126, 126)),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
          Navigator.pushNamed(context, '/compra');
        },
        backgroundColor: Color(0xFF369e6f),
        child: const Icon(Icons.add),
      ),
    );
  }
}
