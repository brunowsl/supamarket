// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomBottomNavigationBar extends StatefulWidget {
  int selectedIndex;
  CustomBottomNavigationBar({super.key, required this.selectedIndex});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return NavigationBarTheme(
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
        selectedIndex: widget.selectedIndex,
        onDestinationSelected: (int index) {
          setState(() {
            widget.selectedIndex = index;
          });
        },
      ),
    );
  }
}
