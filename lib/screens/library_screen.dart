import 'package:flutter/material.dart';
import 'package:profile_app/helpers/apphelper.dart';
import 'package:profile_app/screens/bookdetails_screen.dart';

class LibraryScreen extends StatefulWidget {
  const LibraryScreen({super.key});

  @override
  State<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  String searchText = '';

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> books =
        List.generate(AppHelpers.bookName.length, (index) {
      return {
        'imagePath': AppHelpers.bookImage[index],
        'text': AppHelpers.bookName[index],
      };
    });

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
                crossAxisSpacing: 18.0,
                mainAxisSpacing: 10.0,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: filteredBooks.map((book) {
                  int index = books.indexOf(book); // Get the index of the book
                  return BookItem(book: book, index: index);
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
  final Map<String, String> book;
  final int index; // Add index parameter

  const BookItem({super.key, required this.book, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.blue,
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BookdetailsScreen(
              index: index,
              book: {
                'imagePath': AppHelpers.bookImage[index],
                'text': AppHelpers.bookName[index],
                'description': AppHelpers.bookDescription[index],
                'ISBN': AppHelpers.bookISBN[index],
                'Rating': AppHelpers.bookRating[index],
                'star': AppHelpers.bookStar[index],
                'synopsis': AppHelpers.bookSynopsis[index],
                'clap': AppHelpers.bookClap[index],
                'clapcount': AppHelpers.bookClapcount[index],
              },
            ),
          ),
        );
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            book['imagePath']!,
            height: MediaQuery.of(context).size.height * 0.15,
            width: MediaQuery.of(context).size.width * 0.16,
          ),
          FittedBox(
            child: Text(
              book['text']!,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
