// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_field, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:profile_app/screens/bookdetails_screen.dart';
import 'package:profile_app/screens/join_screen.dart';
import 'package:profile_app/screens/search_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white60,
      body: Padding(
        padding: const EdgeInsets.only(left: 4.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 17.0, right: 17.0, top: 10.0),
              child: Text(
                'Book of the Day',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17.0, right: 17.0),
              child: Container(
                width: double.infinity,
                height: 260,
                decoration: BoxDecoration(
                  color: Color.fromARGB(241, 15, 15, 15),
                  // backgroundBlendMode: BlendMode.color,
                  // border: Border.all(color: Colors.blue, width: 3),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15.0),
                      bottomRight: Radius.circular(15.0),
                      topLeft: Radius.circular(15.0),
                      topRight: Radius.circular(15.0)),
                  image: const DecorationImage(
                    image: AssetImage('assets/bhagavad_gita1.png'),
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
                'Best Sellers ',
                style: TextStyle(
                    fontSize: 20,
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
                '// Popular Now',
                style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: SingleChildScrollView(
                // duration: Duration(seconds: 100),
                // delay: Duration(seconds: 1),
                // delayAfterScrollInput: Duration(seconds: 1),
                // enableScrollInput: true,
                // gap: 25,

                scrollDirection: Axis.horizontal,
                //physics: NeverScrollableScrollPhysics(),
                child: Row(
                  children: [
                    InkWell(
                      splashColor: Colors.blueAccent,
                      onLongPress: () {},
                      onDoubleTap: () {},
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BookdetailsScreen(
                                      bookName:
                                          'The Silent Patient\nby  Alex Michaelides',
                                    )));
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/silent.png',
                            width: 84,
                            height: 84,
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            'The Silent\nPatient',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SearchScreen()));
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/Rich_dad.png',
                            width: 84,
                            height: 84,
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            'Rich Dad\nPoor Dad',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SearchScreen()));
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/hunting.png',
                            width: 84,
                            height: 84,
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            'Haunting\nAdeline ',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SearchScreen()));
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/mind-time.png',
                            width: 84,
                            height: 84,
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            'Mind\nManagement',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    InkWell(
                      splashColor: Colors.blue,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SearchScreen()));
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/five_seconds.png',
                            width: 84,
                            height: 84,
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            'The 5 Second\nRule',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    InkWell(
                      splashColor: Colors.blue,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SearchScreen()));
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/cant.png',
                            width: 84,
                            height: 84,
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            "Can't\nHurt Me",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 14.0),
              child: Text(
                ' Best Authors',
                style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      // hoverColor: Colors.red,
                      splashColor: Colors.blue,
                      onDoubleTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => JoinScreen()));
                      },
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BookdetailsScreen()));
                      },
                      child: _buildProfessional(
                        'assets/pracas.jpg',
                        'Pracas Upreti',
                      ),
                    ),
                    InkWell(
                        splashColor: Colors.blue,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BookdetailsScreen()));
                        },
                        child: _buildProfessional(
                            'assets/chudaraj1.jpg', 'Chudaraj Poudel')),
                    InkWell(
                        splashColor: Colors.blue,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BookdetailsScreen()));
                        },
                        child: _buildProfessional(
                            'assets/diwas.jpg', 'Diwas Poudel')),
                    InkWell(
                        splashColor: Colors.blue,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BookdetailsScreen()));
                        },
                        child: _buildProfessional(
                            'assets/naman.jpg', 'Naman Kunwar')),
                    InkWell(
                        splashColor: Colors.blue,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BookdetailsScreen()));
                        },
                        child: _buildProfessional(
                            'assets/nirajan1.png', 'Nirajan Dahal')),
                    InkWell(
                        splashColor: Colors.blue,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BookdetailsScreen()));
                        },
                        child: _buildProfessional(
                            'assets/isha.jpg', 'Isha Sunam')),
                    InkWell(
                        splashColor: Colors.blue,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BookdetailsScreen()));
                        },
                        child: _buildProfessional(
                            'assets/rimesh.jpg', 'Rimesh Bhattarai')),
                    InkWell(
                        splashColor: Colors.blue,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BookdetailsScreen()));
                        },
                        child: _buildProfessional(
                            'assets/pramod.jpg', 'Pramod Mahato')),
                    InkWell(
                        splashColor: Colors.blue,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BookdetailsScreen()));
                        },
                        child: _buildProfessional(
                            'assets/alisha.jpg', 'Alisha Ghimire')),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildProfessional(String imagePath, String label) {
  return Padding(
    padding: const EdgeInsets.only(left: 2.0),
    child: Column(
      children: [
        // SizedBox(
        //   height: 5,
        // ),
        Padding(
          padding: EdgeInsets.only(left: 9.0),
          child: CircleAvatar(
            backgroundImage: AssetImage(imagePath),
            // radius: 42,
            minRadius: 20,
            maxRadius: 49,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          label,
          style: const TextStyle(fontSize: 12),
        ),
      ],
    ),
  );
}
