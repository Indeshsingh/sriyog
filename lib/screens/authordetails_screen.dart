import 'package:flutter/material.dart';
import 'package:profile_app/helpers/apphelper.dart';

class AuthordetailsScreen extends StatelessWidget {
  final int index;

  const AuthordetailsScreen({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: Text(AppHelpers.authorName[index]),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 92.0, right: 92.0),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.5,
          width: MediaQuery.of(context).size.width * 0.5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(200),
                child: Image.asset(
                  AppHelpers.authorImage[index],
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.height * 0.3,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 1.0),
              Text(
                textAlign: TextAlign.justify,
                AppHelpers.authorName[index],
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
