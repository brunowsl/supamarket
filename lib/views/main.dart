// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:supamarket/views/compra.dart';
import 'package:supamarket/views/supermercados.dart';

import 'historico.dart';
import 'home.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  List<Widget> pages = [
    const HomeView(),
    const CompraView(),
    const SupermercadosView(),
    const HistoricoView(),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'SUPAMARKET made with ❤️',
          style: TextStyle(
            color: Color(0xFF369e6f),
            fontSize: 20,
          ),
        ),
        backgroundColor: Colors.black87,
        iconTheme: const IconThemeData(
          color: Color(0xFF369e6f),
        ),
      ),
      body: pages[selectedIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
          Navigator.pushNamed(context, '/compra');
        },
        backgroundColor: Color(0xFF369e6f),
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.white.withOpacity(0.1),
          indicatorShape: ShapeBorder.lerp(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            0.5,
          ),
          iconTheme: MaterialStateProperty.all(
            const IconThemeData(
              color: Color(0xFF369e6f),
              size: 30,
            ),
          ),
          labelTextStyle: MaterialStateProperty.all(
            const TextStyle(
              color: Color(0xFF369e6f),
              fontSize: 15,
            ),
          ),
        ),
        child: NavigationBar(
          // ignore: prefer_const_literals_to_create_immutables
          destinations: [
            NavigationDestination(
              selectedIcon: const Icon(Icons.home),
              icon: const Icon(Icons.home_outlined),
              label: 'Home',
            ),
            NavigationDestination(
              selectedIcon: const Icon(Icons.shopping_cart),
              icon: const Icon(Icons.shopping_cart_outlined),
              label: 'Compra',
            ),
            NavigationDestination(
              icon: const Icon(Icons.store),
              label: 'Mercados',
            ),
            NavigationDestination(
              icon: const Icon(Icons.history),
              label: 'Histórico',
            ),
          ],
          backgroundColor: Colors.black,
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          selectedIndex: selectedIndex,
          onDestinationSelected: (int index) {
            setState(() {
              selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
