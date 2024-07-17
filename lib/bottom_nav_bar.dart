// bottom_nav_bar.dart
import 'package:flutter/material.dart';

import 'package:profile_app/screens/contact_screen.dart';
import 'package:profile_app/screens/home_screen.dart';
import 'package:profile_app/screens/submit_screen.dart';
import 'package:profile_app/screens/library_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const LibraryScreen(),
    const JoinScreen(),
    const ContactScreen(),
    // const BookdetailsScreen(index: 0),
    // const AuthordetailsScreen(index: 0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        shadowColor: Colors.black,
        elevation: 10,
        titleSpacing: 0.0,
        title: const Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 19.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/Pracas_sir.jpg'),
              ),
            ),
            Text(
              ' Bookiz |',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                //fontSize: 20,
              ),
            ),
            Text(
              ' Explore Now',
              style: TextStyle(fontSize: 16),
            )
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.location_on),
            onPressed: () {},
          ),
        ],
      ),
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
              icon: Icon(Icons.room_service), label: 'Library'),
          BottomNavigationBarItem(icon: Icon(Icons.join_full), label: 'Submit'),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_phone), label: 'Contact'),
        ],
      ),
    );
  }
}
