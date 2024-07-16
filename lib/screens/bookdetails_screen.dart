// ignore_for_file: sort_child_properties_last, library_private_types_in_public_api, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:profile_app/helpers/apphelper.dart';

class BookdetailsScreen extends StatefulWidget {
  final Map<String, String> book;
  final int index;

  const BookdetailsScreen({super.key, required this.book, required this.index});

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
        title: Text(widget.book['text']!),
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
                    const SizedBox(height: 20),
                    Text(
                      AppHelpers.bookDescription[widget.index],
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      AppHelpers.bookPublication[widget.index],
                    ),
                    const SizedBox(height: 20),
                    DoubleTappableInteractiveViewer(
                      child: Text(
                        _isExpanded
                            ? AppHelpers.bookSynopsis[widget.index]
                            : AppHelpers.bookSynopsis[widget.index].substring(0,
                                200), // Display first 100 characters only when not expanded
                        style: const TextStyle(fontSize: 18),
                      ),
                    ),
                    const SizedBox(height: 65),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all<Color>(Colors.black),
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

class DoubleTappableInteractiveViewer extends StatefulWidget {
  final Widget child;

  const DoubleTappableInteractiveViewer({super.key, required this.child});

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
