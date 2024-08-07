// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:profile_app/bottom_nav_bar.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) async {
        if (didPop) {
          return;
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => BottomNavBar()),
          ).then((dynamic) => setState(() {}));
          // ignore: non_constant_identifier_names
          //(Route<dynamic> Route) => false,

          return;
        }
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 304.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15.0),
                      bottomRight: Radius.circular(15.0),
                    ),
                    image: DecorationImage(
                      image: AssetImage('assets/Biratnagar.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 17.0),
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.grey.withOpacity(0.5),
                  //     spreadRadius: 2,
                  //     blurRadius: 7,
                  //     offset: Offset(0, 3),
                  //   ),
                  // ],
                ),
                SizedBox(height: 10.0),
                Text(
                  'Contact Us',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.location_on),
                      Text(
                        '|',
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.w100),
                      ),
                      Text(
                        'Above Nepal SBI Bank Ltd.\n Himalyan Road, Biratnagar Nepal',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.mail),
                      Text(
                        '|',
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.w100),
                      ),
                      Text(
                        'info@gmail.com',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.call),
                      Text(
                        '|',
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.w100),
                      ),
                      Text(
                        '+977-9852024365[Membership]\n +977-9820510359[Business]',
                        style: TextStyle(fontSize: 16.0),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.web),
                      Text(
                        '|',
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.w100),
                      ),
                      Text(
                        'www.sriyog.com',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
