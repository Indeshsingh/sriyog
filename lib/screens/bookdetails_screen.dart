import 'package:flutter/material.dart';
import 'package:profile_app/helpers/apphelper.dart';

class BookdetailsScreen extends StatelessWidget {
  final int index;

  const BookdetailsScreen({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppHelpers.bookName[index]),
      ),
      body: InteractiveViewer(
        panEnabled: true,
        scaleEnabled: true,
        minScale: 0.4,
        maxScale: 6.0,
        constrained: true,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(AppHelpers.bookImage[index]),
              const SizedBox(height: 16.0),
              Text(
                AppHelpers.bookName[index],
                style: const TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0),
              Text(
                AppHelpers.bookDescription[index],
                style: const TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
