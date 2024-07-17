import 'package:flutter/material.dart';
import 'package:profile_app/helpers/apphelper.dart';
import 'package:share_plus/share_plus.dart';

class BookDetailsScreen extends StatefulWidget {
  final Map<String, String> book;
  final int index;

  const BookDetailsScreen({Key? key, required this.book, required this.index})
      : super(key: key);

  @override
  _BookDetailsScreenState createState() => _BookDetailsScreenState();
}

class _BookDetailsScreenState extends State<BookDetailsScreen> {
  bool _isExpanded = false;

  void _toggleExpanded() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  void shareContent() async {
    String bookName = AppHelpers.bookName[widget.index];
    String bookDescription = AppHelpers.bookDescription[widget.index];
    String shareContent =
        'Check out this book: $bookName\n$bookDescription\n\nFind out more here: https://example.com';

    await Share.share(shareContent);
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
              ' Bookiz |',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              ' Explore Now',
              style: TextStyle(fontSize: 16),
            ),
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
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      AppHelpers.bookISBN[widget.index],
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          AppHelpers.bookRating[widget.index],
                          style: const TextStyle(fontSize: 16),
                        ),
                        Text(
                          AppHelpers.bookStar[widget.index],
                          style: const TextStyle(fontSize: 28),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    DoubleTappableInteractiveViewer(
                      child: Text(
                        _isExpanded
                            ? AppHelpers.bookSynopsis[widget.index]
                            : '${AppHelpers.bookSynopsis[widget.index].substring(0, 200)}...',
                        style: const TextStyle(fontSize: 18),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          AppHelpers.bookClap[widget.index],
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          AppHelpers.bookClapcount[widget.index],
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: shareContent,
                          child: Image.asset(
                            'assets/share.png',
                            width: 30,
                            height: 30,
                          ),
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
                    const SizedBox(height: 20),
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
  final TransformationController _transformationController =
      TransformationController();
  final double _minScale = 1.0;
  final double _maxScale = 3.0;

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
