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
      body: InteractiveViewer(
        panEnabled: true,
        scaleEnabled: true,
        minScale: 0.5,
        maxScale: 6.0,
        panAxis: PanAxis.free,
        constrained: true,
        child: SingleChildScrollView(
          child: Padding(
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
                  style: const TextStyle(fontSize: 14),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  AppHelpers
                      .bookSynopsis[AppHelpers.bookName.indexOf(book['text']!)],
                  style: const TextStyle(fontSize: 14),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.black),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Read Now",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
