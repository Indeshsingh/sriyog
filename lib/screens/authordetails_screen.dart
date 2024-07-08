import 'package:flutter/material.dart';
import 'package:profile_app/helpers/apphelper.dart';

class AuthordetailsScreen extends StatelessWidget {
  final int index;

  const AuthordetailsScreen({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(246, 255, 255, 255),
      appBar: AppBar(
        title: Text(AppHelpers.authorName[index]),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(AppHelpers.authorImage[index]),
            // const SizedBox(
            //   height: 1.0,
            // ),
            Align(
              alignment: Alignment.center,
              child: Text(
                AppHelpers.authorName[index],
                style: const TextStyle(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
