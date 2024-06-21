import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'MyApp',
    home: Scaffold(
      appBar: AppBar(
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
              'Profile App',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.location_on),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
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
                        'assets/logo.png',
                        width: 82,
                        height: 82,
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'Electrician 1',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  const SizedBox(width: 10),
                  Column(
                    children: [
                      Image.asset(
                        'assets/logo.png',
                        width: 82,
                        height: 82,
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'Electrician 2',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  const SizedBox(width: 10),
                  Column(
                    children: [
                      Image.asset(
                        'assets/logo.png',
                        width: 82,
                        height: 82,
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'Electrician 3',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  const SizedBox(width: 10),
                  Column(
                    children: [
                      Image.asset(
                        'assets/logo.png',
                        width: 82,
                        height: 82,
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'Electrician 4',
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
             const Column(
          children: [
        CircleAvatar(
                backgroundImage: AssetImage('assets/logo.png'),
              ),
            ),

          ],
        ),
      ),
    ),
  ));
}
