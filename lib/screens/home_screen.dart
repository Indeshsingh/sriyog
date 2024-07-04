// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_field, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:profile_app/screens/Indeshdetails_screen.dart';
import 'package:profile_app/screens/join_screen.dart';
import 'package:profile_app/screens/library_screen.dart';
import 'package:profile_app/screens/search_screen.dart';
import 'package:scroll_loop_auto_scroll/scroll_loop_auto_scroll.dart';

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
                  color: Color.fromARGB(242, 99, 65, 194),
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
              child: ScrollLoopAutoScroll(
                duration: Duration(seconds: 100),
                delay: Duration(seconds: 1),
                delayAfterScrollInput: Duration(seconds: 1),
                enableScrollInput: true,
                gap: 25,

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
                                builder: (context) => LibraryScreen()));
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/silent.png',
                            width: 82,
                            height: 82,
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            'The Silent Patient',
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
                            width: 82,
                            height: 82,
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            'Rich Dad Poor Dad',
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
                            width: 82,
                            height: 82,
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            'Haunting Adeline ',
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
                            width: 82,
                            height: 82,
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            'Mind Management',
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
                            width: 82,
                            height: 82,
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            'The 5 Second Rule',
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
                            width: 82,
                            height: 82,
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            "Can't Hurt Me",
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
              height: 5.0,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 14.0),
              child: Text(
                '// Best Authors',
                style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
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
                                builder: (context) => IndeshdetailsScreen()));
                      },
                      child: _buildProfessional(
                        'assets/sims_lifestyle.jpg',
                        'Lifestyle',
                      ),
                    ),
                    InkWell(
                        splashColor: Colors.blue,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => IndeshdetailsScreen()));
                        },
                        child: _buildProfessional(
                            'assets/drama.jpg', 'Poetry&\nDrama')),
                    InkWell(
                        splashColor: Colors.blue,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => IndeshdetailsScreen()));
                        },
                        child: _buildProfessional(
                            'assets/cultural.jpg', 'Regional&\nCultural')),
                    InkWell(
                        splashColor: Colors.blue,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => IndeshdetailsScreen()));
                        },
                        child: _buildProfessional(
                            'assets/children.jpg', 'Children\nBooks')),
                    InkWell(
                        splashColor: Colors.blue,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => IndeshdetailsScreen()));
                        },
                        child:
                            _buildProfessional('assets/drama.jpg', 'Fiction')),
                    InkWell(
                        splashColor: Colors.blue,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => IndeshdetailsScreen()));
                        },
                        child: _buildProfessional(
                            'assets/drama.jpg', 'Non-Fiction')),
                    InkWell(
                        splashColor: Colors.blue,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => IndeshdetailsScreen()));
                        },
                        child: _buildProfessional('assets/drama.jpg', 'Suraj')),
                    InkWell(
                        splashColor: Colors.blue,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => IndeshdetailsScreen()));
                        },
                        child: _buildProfessional('assets/drama.jpg', 'Gopal')),
                    InkWell(
                        splashColor: Colors.blue,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => IndeshdetailsScreen()));
                        },
                        child: _buildProfessional('assets/drama.jpg', 'Rahul')),
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
            radius: 42,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          label,
          style: const TextStyle(fontSize: 12),
        ),
      ],
    ),
  );
}
