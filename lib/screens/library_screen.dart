import 'package:flutter/material.dart';

class LibraryScreen extends StatefulWidget {
  const LibraryScreen({super.key});

  @override
  State<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  String searchText = '';
  final List<Map<String, String>> books = [
    {'imagePath': 'assets/silent.png', 'text': 'The Silent\nPatient'},
    {
      'imagePath': 'assets/mind-time.png',
      'text': 'Mind Management\nNot Time Management'
    },
    {'imagePath': 'assets/offers.png', 'text': 'Hundrerd million\nOffers'},
    {'imagePath': 'assets/five_seconds.png', 'text': 'The 5 Second\nRule'},
    {'imagePath': 'assets/hunting.png', 'text': 'Haunting\nAdeline'},
    {
      'imagePath': "assets/books/A programmer's Guide to the Mind.png",
      'text': "A programmer's\nGuide to the Mind"
    },
    {
      'imagePath': 'assets/books/Child development.png',
      'text': 'Child\nDevelopment'
    },
    {'imagePath': 'assets/books/Cosmic Healing.png', 'text': 'Cosmic\nHealing'},
    {
      'imagePath': 'assets/books/foregin_exchange and money markets.png',
      'text': 'Foregin exchange\nand money markets'
    },
    {
      'imagePath': 'assets/books/Fronted frameworks.png',
      'text': 'Fronted\nframeworks'
    },
    {
      'imagePath': 'assets/books/Money management skills.png',
      'text': 'Money Management\nSkills'
    },
    {
      'imagePath': 'assets/books/Speed math for kids.png',
      'text': 'Speed Math\nfor kids'
    },
    {'imagePath': 'assets/best-stephen-king.png', 'text': 'Best\nStephen King'},
    {'imagePath': 'assets/bhagavad_gita1.png', 'text': 'Bhagavad\nGita'},
    // {'imagePath': 'assets/tubewell.png', 'text': 'Tubewell'},
    // {'imagePath': 'assets/tubewell.png', 'text': 'Tubewell'},
    // {'imagePath': 'assets/tubewell.png', 'text': 'Tubewell'},
    // {'imagePath': 'assets/tubewell.png', 'text': 'Tubewell'},
    // {'imagePath': 'assets/tubewell.png', 'text': 'Tubewell'},
  ];

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> filteredBooks = books.where((book) {
      return book['text']!.toLowerCase().contains(searchText.toLowerCase());
    }).toList();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 18.0, right: 18.0, top: 25.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                onChanged: (value) {
                  setState(() {
                    searchText = value;
                  });
                },
                decoration: InputDecoration(
                  labelText: 'Search',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 20.0,
                mainAxisSpacing: 10.0,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: filteredBooks.map((book) {
                  return BookItem(
                      imagePath: book['imagePath']!, text: book['text']!);
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BookItem extends StatelessWidget {
  final String imagePath;
  final String text;

  const BookItem({super.key, required this.imagePath, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          imagePath,
          height: MediaQuery.of(context).size.height * 0.15,
          width: MediaQuery.of(context).size.width * 0.16,
        ),
        FittedBox(child: Text(text, style: const TextStyle(fontSize: 14))),
      ],
    );
  }
}
