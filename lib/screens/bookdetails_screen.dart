import 'package:flutter/material.dart';

class BookdetailsScreen extends StatelessWidget {
  final Map<String, String> book;

  const BookdetailsScreen({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(book['text']!),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset(
              book['imagePath']!,
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width * 0.6,
            ),
            const SizedBox(height: 20),
            Text(
              book['text']!,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              "",
              // You can add a detailed description from AppHelpers if needed
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
