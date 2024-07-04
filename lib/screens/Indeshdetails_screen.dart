// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class IndeshdetailsScreen extends StatelessWidget {
  final String? bookName;
  const IndeshdetailsScreen({super.key, this.bookName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 18.0, top: 90.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/silent.png'),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    bookName ?? "",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '',
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Text(
                    '#Fiction #Technological #Suspense',
                    style: TextStyle(fontSize: 15),
                    // ),
                    // SizedBox(
                    //   height: 5,
                    // ),
                    // Text(
                    //   'Working hours: 10:00 AM - 5:30 PM (NPT)',
                    //   style: TextStyle(fontSize: 10),
                    // ),
                    // SizedBox(
                    //   height: 20,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
