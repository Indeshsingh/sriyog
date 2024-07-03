// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:profile_app/bottom_nav_bar.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Sriyog Demo',
    home: Scaffold(body: const BottomNavBar()),
  ));
}
