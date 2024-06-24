// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 17.0, right: 17.0),
                  child: Container(
                    width: double.infinity,
                    height: 200, // Adjust the height as needed
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue, width: 3),
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                        image: AssetImage('assets/pic2.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Text(
                    'Verified',
                    style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16.0, top: 5.0),
                  child: Text(
                    'Professional Marketplace',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Text(
                    '// Top Services',
                    style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            'assets/outlet.png',
                            width: 82,
                            height: 82,
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            'Electrician',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      const SizedBox(width: 10),
                      Column(
                        children: [
                          Image.asset(
                            'assets/contractor.png',
                            width: 82,
                            height: 82,
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            'Contractor',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      const SizedBox(width: 10),
                      Column(
                        children: [
                          Image.asset(
                            'assets/priest.png',
                            width: 82,
                            height: 82,
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            'Priest',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      const SizedBox(width: 10),
                      Column(
                        children: [
                          Image.asset(
                            'assets/plumber.png',
                            width: 82,
                            height: 82,
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            'Plumber',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 14.0),
                  child: Text(
                    '// Top Professionals',
                    style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildProfessional('assets/logo.png', 'Indesh'),
                    _buildProfessional('assets/logo.png', 'name2'),
                    _buildProfessional('assets/logo.png', 'name3'),
                    _buildProfessional('assets/logo.png', 'name4'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromARGB(255, 206, 194, 194),
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.red,
          type: BottomNavigationBarType.fixed,
          onTap: (value) {},
          items: [
            const BottomNavigationBarItem(
                icon: Icon(Icons.home), label: 'Home'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.room_service), label: 'Services'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.search), label: 'Search'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.join_full), label: 'Join'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.contact_phone), label: 'Contact'),
          ]),
    );
  }
}

Widget _buildProfessional(String imagePath, String label) {
  return Column(
    children: [
      CircleAvatar(
        backgroundImage: AssetImage(imagePath),
        radius: 41,
      ),
      const SizedBox(height: 5),
      Text(
        label,
        style: const TextStyle(fontSize: 12),
      ),
    ],
  );
}
