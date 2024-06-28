import 'package:flutter/material.dart';
import 'package:profile_app/screens/contact_screen.dart';
import 'package:profile_app/screens/home_screen.dart';
import 'package:profile_app/screens/join_screen.dart';
import 'package:profile_app/screens/search_screen.dart';
import 'package:profile_app/screens/services_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const ServicesScreen(),
    const SearchScreen(),
    const JoinScreen(),
    const ContactScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 206, 194, 194),
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.room_service), label: 'Services'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.join_full), label: 'Join'),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_phone), label: 'Contact'),
        ],
      ),
    );
  }
}
