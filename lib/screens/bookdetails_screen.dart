// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:profile_app/helpers/apphelper.dart';

class BookdetailsScreen extends StatelessWidget {
  final Map<String, String> book;

  const BookdetailsScreen({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(book['text']!),
      ),
      body: Column(
        children: [
          Expanded(
            child: InteractiveViewer(
              panEnabled: true,
              scaleEnabled: true,
              minScale: 0.5,
              maxScale: 6.0,
              panAxis: PanAxis.free,
              constrained: true,
              child: SingleChildScrollView(
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
                      AppHelpers.bookDescription[
                          AppHelpers.bookName.indexOf(book['text']!)],
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      AppHelpers.bookSynopsis[
                          AppHelpers.bookName.indexOf(book['text']!)],
                      style: const TextStyle(fontSize: 18),
                    ),
                    const SizedBox(height: 65),
                    ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.black),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Read Now",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            color: const Color.fromARGB(66, 96, 84, 84),
            child: const Column(
              children: [
                Divider(
                  color: Colors.black,
                  thickness: 0.5,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '© 2024, All Rights Reserved.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
