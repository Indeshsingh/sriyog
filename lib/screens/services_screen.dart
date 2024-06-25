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
        children: List.generate(11, (index) {
          return Center(
            child: Container(
              color: Colors.blue,
              height: 100.0,
              width: 100.0,
              child: Center(
                child: Text(
                  'Item $index',
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
