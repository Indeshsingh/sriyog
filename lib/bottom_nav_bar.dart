import 'package:flutter/material.dart';
import 'package:profile_app/screens/Indeshdetails_screen.dart';
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
    const ContactScreen(),
    const IndeshdetailsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              ' Bookz |',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                //fontSize: 20,
              ),
            ),
            Text(
              ' Biratnagar',
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
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.join_full), label: 'Join'),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_phone), label: 'Contact'),
        ],
      ),
    );
  }
}
