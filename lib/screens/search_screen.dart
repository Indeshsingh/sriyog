import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 20),
        padding: const EdgeInsets.only(left: 18, right: 18),
        child: const TextField(
            decoration: InputDecoration(
          labelText: 'Search',
          border: OutlineInputBorder(),
          prefixIcon: Icon(Icons.search),
        )),
      ),
    );
  }
}
