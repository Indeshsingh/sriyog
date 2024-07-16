import 'package:flutter/material.dart';
import 'package:profile_app/helpers/apphelper.dart';
import 'package:profile_app/screens/bookdetails_screen.dart';
import 'package:profile_app/screens/authordetails_screen.dart';
import 'package:flutter_flip_card/flutter_flip_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white60,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 4.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 17.0, right: 17.0, top: 10.0),
                // child: Text(
                //   'Book of the Day',
                //   style: TextStyle(
                //     fontSize: 20,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 17.0, right: 17.0),
                child: FlipCard(
                  frontWidget: _buildFlipCardFront(),
                  backWidget: _buildFlipCardBack(),
                  onTapFlipping: true,
                  axis: FlipAxis.vertical,
                  controller: FlipCardController(),
                  rotateSide: RotateSide.right,
                ),
              ),
              const SizedBox(height: 5),
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
                  'Best Sellers',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal),
                ),
              ),
              const SizedBox(height: 5),
              const Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                  '// Popular Now',
                  style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _buildBookItem(context, 'assets/silent.png',
                          'The Silent\nPatient', 0),
                      const SizedBox(width: 10),
                      _buildBookItem(context, 'assets/Rich_dad.png',
                          'Rich Dad\nPoor Dad', 1),
                      const SizedBox(width: 10),
                      _buildBookItem(context, 'assets/hunting.png',
                          'Haunting\nAdeline', 2),
                      const SizedBox(width: 10),
                      _buildBookItem(context, 'assets/mind-time.png',
                          'Mind\nManagement', 3),
                      const SizedBox(width: 10),
                      _buildBookItem(context, 'assets/five_seconds.png',
                          'The 5 Second\nRule', 4),
                      const SizedBox(width: 10),
                      _buildBookItem(
                          context, 'assets/cant.png', "Can't\nHurt Me", 5),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 8.0),
              const Padding(
                padding: EdgeInsets.only(left: 14.0),
                child: Text(
                  'Best Authors',
                  style: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 5.0),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildAuthorItem(
                          context, 'assets/pracas.jpg', 'Pracas', 0),
                      _buildAuthorItem(
                          context, 'assets/chudaraj1.jpg', 'Chudaraj', 1),
                      _buildAuthorItem(context, 'assets/diwas.jpg', 'Diwas', 2),
                      _buildAuthorItem(context, 'assets/naman.jpg', 'Naman', 3),
                      _buildAuthorItem(
                          context, 'assets/nirajan1.png', 'Nirajan', 4),
                      _buildAuthorItem(context, 'assets/isha.jpg', 'Isha', 5),
                      _buildAuthorItem(
                          context, 'assets/rimesh.jpg', 'Rimesh', 6),
                      _buildAuthorItem(
                          context, 'assets/pramod.jpg', 'Pramod', 7),
                      _buildAuthorItem(
                          context, 'assets/alisha.jpg', 'Alisha', 8),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFlipCardFront() {
    return Container(
      width: double.infinity,
      height: 285,
      decoration: const BoxDecoration(
        color: Color.fromARGB(218, 83, 14, 222),
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
        image: DecorationImage(
          image: AssetImage('assets/bhagavad_gita1.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildFlipCardBack() {
    return Container(
      width: double.infinity,
      height: 285,
      decoration: const BoxDecoration(
        color: Color.fromARGB(218, 222, 14, 14),
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
        image: DecorationImage(
          image: AssetImage('assets/bhagavad-gita2.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildBookItem(
      BuildContext context, String imagePath, String title, int index) {
    return InkWell(
      splashColor: Colors.blueAccent,
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
                'rating': AppHelpers.bookRating[index],
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
        children: [
          Image.asset(
            imagePath,
            width: 84,
            height: 84,
          ),
          const SizedBox(height: 5),
          Text(
            title,
            style: const TextStyle(fontSize: 12),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildAuthorItem(
      BuildContext context, String imagePath, String label, int index) {
    return InkWell(
      splashColor: Colors.blue,
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AuthordetailsScreen(index: index),
          ),
        );
      },
      child: _buildAuthor(imagePath, label),
    );
  }

  Widget _buildAuthor(String imagePath, String label) {
    return Padding(
      padding: const EdgeInsets.only(left: 2.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 9.0),
            child: CircleAvatar(
              backgroundImage: AssetImage(imagePath),
              minRadius: 20,
              maxRadius: 49,
            ),
          ),
          Text(
            label,
            style: const TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
