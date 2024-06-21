import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 17.0, right: 17.0),
            child: Image.asset(
              'assets/pic2.jpg',
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildProfessional('assets/img.png', 'name1'),
              _buildProfessional('assets/img.png', 'name2'),
              _buildProfessional('assets/img.png', 'name3'),
              _buildProfessional('assets/img.png', 'name4'),
            ],
          ),
        ],
      ),
    );
  }
}

Widget _buildProfessional(String imagePath, String label) {
  return Column(
    children: [
      CircleAvatar(
        backgroundImage: AssetImage(imagePath),
        radius: 41,
      ),
      const SizedBox(height: 5),
      Text(
        label,

        // ignore: prefer_const_constructors
        style: TextStyle(fontSize: 12),
      ),
    ],
  );
}
