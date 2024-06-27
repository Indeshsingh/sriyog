// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:profile_app/bottom_nav_bar.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Sriyog Demo',
    home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 220, 216, 216),
          elevation: 10,
          titleSpacing: 0.0,
          title: const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/logo.png'),
                ),
              ),
              Text(
                'SRIYOG|',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Biratnagar',
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
