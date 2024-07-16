// ignore_for_file: prefer_final_fields, use_super_parameters, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:profile_app/helpers/apphelper.dart';

class BookdetailsScreen extends StatefulWidget {
  final Map<String, String> book;
  final int index;

  const BookdetailsScreen({Key? key, required this.book, required this.index})
      : super(key: key);

  @override
  _BookdetailsScreenState createState() => _BookdetailsScreenState();
}

class _BookdetailsScreenState extends State<BookdetailsScreen> {
  bool _isExpanded = false;

  void _toggleExpanded() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        shadowColor: Colors.black,
        elevation: 10,
        titleSpacing: 0.0,
        title: const Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 19.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/Pracas_sir.jpg'),
              ),
            ),
            Text(
              ' Bookz |',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                //fontSize: 20,
              ),
            ),
            Text(
              ' Explore Now',
              style: TextStyle(fontSize: 16),
            )
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.location_on),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.asset(
                      AppHelpers.bookImage[widget.index],
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: MediaQuery.of(context).size.width * 0.6,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      AppHelpers.bookDescription[widget.index],
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      AppHelpers.bookISBN[widget.index],
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      AppHelpers.bookRating[widget.index],
                      style: const TextStyle(fontSize: 16),
                    ),
                    Text(
                      AppHelpers.bookStar[widget.index],
                      textAlign: TextAlign.right,
                      style: const TextStyle(fontSize: 25),
                    ),
                    const SizedBox(height: 5),
                    DoubleTappableInteractiveViewer(
                      child: Text(
                        _isExpanded
                            ? AppHelpers.bookSynopsis[widget.index]
                            : '${AppHelpers.bookSynopsis[widget.index].substring(0, 200)}...', // Display first 200 characters only when not expanded
                        style: const TextStyle(fontSize: 18),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/share.png',
                          width: 30,
                          height: 30,
                        ),
                        const SizedBox(width: 20),
                        Image.asset(
                          'assets/facebook.png',
                          width: 30,
                          height: 30,
                        ),
                        const SizedBox(width: 20),
                        Image.asset(
                          'assets/linkden.png',
                          width: 25,
                          height: 25,
                        ),
                        const SizedBox(width: 20),
                        Image.asset(
                          'assets/instagram.png',
                          width: 25,
                          height: 25,
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                      ),
                      onPressed: _toggleExpanded,
                      child: Text(
                        _isExpanded ? "Show Less" : "Read Now",
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // const Divider(
          //   color: Colors.black,
          //   thickness: 0.5,
          // ),
          // const Padding(
          //   padding: EdgeInsets.all(8.0),
          //   child: Text(
          //     '© 2024, All Rights Reserved.',
          //     style: TextStyle(
          //       color: Colors.black,
          //       fontSize: 15,
          //     ),
          //   ),
          // ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 218, 215, 215),
        child: const Icon(Icons.bookmark),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 206, 194, 194),
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        onTap: (int index) {
          switch (index) {
            case 0:
              break;
            case 1:
              break;
            case 2:
              break;
            case 3:
              break;
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.room_service), label: 'Library'),
          BottomNavigationBarItem(icon: Icon(Icons.join_full), label: 'Submit'),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_phone), label: 'Contact'),
        ],
      ),
    );
  }
}

class DoubleTappableInteractiveViewer extends StatefulWidget {
  final Widget child;

  const DoubleTappableInteractiveViewer({Key? key, required this.child})
      : super(key: key);

  @override
  _DoubleTappableInteractiveViewerState createState() =>
      _DoubleTappableInteractiveViewerState();
}

class _DoubleTappableInteractiveViewerState
    extends State<DoubleTappableInteractiveViewer> {
  TransformationController _transformationController =
      TransformationController();
  double _minScale = 1.0;
  double _maxScale = 3.0;

  void _handleDoubleTap() {
    final double currentScale =
        _transformationController.value.getMaxScaleOnAxis();
    final double newScale = currentScale == _minScale ? _maxScale : _minScale;

    _transformationController.value = Matrix4.identity()..scale(newScale);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: _handleDoubleTap,
      child: InteractiveViewer(
        transformationController: _transformationController,
        minScale: _minScale,
        maxScale: _maxScale,
        child: widget.child,
      ),
    );
  }
}
