// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  // ignore: unused_field
  bool _canPop = true;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (_canPop) {
          return true;
        } else {
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                    title: const Text('Alert'),
                    content: const Text('Are you sure you want to exit'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('No'),
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            _canPop = true;
                          });
                          Navigator.of(context).pop();
                        },
                        child: const Text('Yes'),
                      ),
                    ],
                  ));
          return false;
        }
      },
      child: Scaffold(
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
      ),
    );
  }
}
