import 'package:flutter/material.dart';

class IndeshdetailsScreen extends StatelessWidget {
  const IndeshdetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 18.0, top: 90.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/logo.png'),
              radius: 90,
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Indesh Singh',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Profession:Student',
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'City:Biratnagar',
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'working hours:10:00AM-5:30PM',
                    style: TextStyle(fontSize: 10),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(''),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
