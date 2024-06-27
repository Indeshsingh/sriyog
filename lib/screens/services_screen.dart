import 'package:flutter/material.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 4.0,
        mainAxisSpacing: 8.0,
        children: [
          Container(
            padding: EdgeInsets.all(18),
            child: Image.asset('assets/contractor.png'),
          ),
          Container(
            padding: EdgeInsets.all(18),
            child: Image.asset('assets/plumber.png'),
          ),
          Container(
            padding: EdgeInsets.all(18),
            child: Image.asset('assets/priest.png'),
          ),
          Container(
            padding: EdgeInsets.all(18),
            child: Image.asset('assets/outlet.png'),
          ),
          Container(
            padding: EdgeInsets.all(18),
            child: Image.asset('assets/contractor.png'),
          ),
          Container(
            padding: EdgeInsets.all(18),
            child: Image.asset('assets/contractor.png'),
          ),
          Container(
            padding: EdgeInsets.all(18),
            child: Image.asset('assets/contractor.png'),
          ),
          Container(
            padding: EdgeInsets.all(18),
            child: Image.asset('assets/contractor.png'),
          ),
        ],
      ),
    );
  }
}
