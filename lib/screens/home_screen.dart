import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset(
              'assets/pic2.jpg',
              width: 330,
              height: 330,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Text(
              'Verified',
              style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16.0, top: 5.0),
            child: Text(
              'Professional Marketplace',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Text(
              '// Top Services',
              style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/outlet.png',
                      width: 82,
                      height: 82,
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Electrician',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                const SizedBox(width: 10),
                Column(
                  children: [
                    Image.asset(
                      'assets/contractor.png',
                      width: 82,
                      height: 82,
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Contractor',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                const SizedBox(width: 10),
                Column(
                  children: [
                    Image.asset(
                      'assets/priest.png',
                      width: 82,
                      height: 82,
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Priest',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                const SizedBox(width: 10),
                Column(
                  children: [
                    Image.asset(
                      'assets/plumber.png',
                      width: 82,
                      height: 82,
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Plumber',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Text(
              '// Top Professionals',
              style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
