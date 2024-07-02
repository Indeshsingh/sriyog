// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:profile_app/bottom_nav_bar.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Sriyog Demo',
    home: Scaffold(
        appBar: AppBar(
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
                ' SRIYOG |',
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
        body: const BottomNavBar()),
  ));
}
