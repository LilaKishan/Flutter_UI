import 'package:flutter/material.dart';
import 'package:shoping/cart_page.dart';
import 'package:shoping/first_page.dart';

class BottomNavigationBarPage extends StatefulWidget {
  const BottomNavigationBarPage({super.key});

  @override
  State<BottomNavigationBarPage> createState() =>
      _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  int _selectedIndex = 0;
  bool? ispage = false;

  final List<Widget> _pages = [
    FirstPage(),
    Icon(
      Icons.message,
      size: 150,
    ),
    Icon(
      Icons.heart_broken,
      size: 150,
    ),
    CartPage(),
    Icon(
      Icons.person,
      size: 150,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 221, 241, 250),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        backgroundColor: Colors.white,
        iconSize: 24,
        unselectedItemColor: Theme.of(context).focusColor.withOpacity(1),
        selectedIconTheme: IconThemeData(size: 30),
        selectedItemColor: Colors.greenAccent,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      body:
          _selectedIndex == 0 ? FirstPage() : _pages.elementAt(_selectedIndex),
    );
  }
}
