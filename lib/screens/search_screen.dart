// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  // ignore: unused_field

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Container(
          margin: const EdgeInsets.only(top: 20),
          padding: const EdgeInsets.only(left: 18, right: 18),
          child: const TextField(
              decoration: InputDecoration(
            labelText: 'Search',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.search),
          )),
        ),
        const SizedBox(
          height: 20,
        ),
        ListTile(
          leading: Image.asset('assets/silent.png'),
          // ignore: prefer_const_constructors
          title: Text('The Silent Patient'),
        ),
        const SizedBox(
          height: 10,
        ),
        ListTile(
          leading: Image.asset('assets/mind-time.png'),
          title: const Text('Mind Management, Not Time Management'),
        ),
        const SizedBox(
          height: 10,
        ),
        ListTile(
          leading: Image.asset('assets/offers.png'),
          title: const Text("Hundrerd million Offers"),
        ),
        const SizedBox(
          height: 10,
        ),
        ListTile(
          leading: Image.asset('assets/five_seconds.png'),
          title: const Text('The 5 Second Rule'),
        ),
        const SizedBox(
          height: 10,
        ),
        ListTile(
          leading: Image.asset('assets/hunting.png'),
          title: const Text('Haunting Adeline'),
        ),
        const SizedBox(
          height: 10,
        ),
        ListTile(
          leading:
              Image.asset("assets/books/A programmer's Guide to the Mind.png"),
          title: const Text("A programmer's Guide to the Mind"),
        ),
        const SizedBox(
          height: 10,
        ),
        ListTile(
          leading: Image.asset('assets/books/Child development.png'),
          title: const Text('Child Development'),
        ),
        const SizedBox(
          height: 10,
        ),
        ListTile(
          leading: Image.asset('assets/books/Cosmic Healing.png'),
          title: const Text('Cosmic Healing'),
        ),
        const SizedBox(
          height: 10,
        ),
        ListTile(
          leading: Image.asset(
              'assets/books/foregin_exchange and money markets.png'),
          title: const Text('Foregin exchange and money markets'),
        ),
        const SizedBox(
          height: 10,
        ),
        ListTile(
          leading: Image.asset('assets/books/Fronted frameworks.png'),
          title: const Text('Fronted frameworks'),
        ),
        const SizedBox(
          height: 10,
        ),
        ListTile(
          leading: Image.asset('assets/books/Money management skills.png'),
          title: const Text('Money Management Skills'),
        ),
        const SizedBox(
          height: 10,
        ),
        ListTile(
          leading: Image.asset('assets/books/Speed math for kids.png'),
          title: const Text('Speed Math for kids'),
        )
      ]),
    );
  }
}
