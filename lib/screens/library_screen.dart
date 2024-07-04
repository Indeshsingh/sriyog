import 'package:flutter/material.dart';

class LibraryScreen extends StatefulWidget {
  const LibraryScreen({super.key});

  @override
  State<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      // canPop: false,
      onPopInvoked: (didPop) async {
        if (didPop) {
          return;
        } else {
          // Navigator.pop(
          //     context, MaterialPageRoute(builder: (context) => HomeScreen()));
        }
      },
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 18.0, right: 18.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                GridView.count(
                  crossAxisCount: 3,
                  crossAxisSpacing: 20.0,
                  mainAxisSpacing: 10,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: const [
                    ServiceItem(
                        imagePath: 'assets/contractor.png', text: 'Contractor'),
                    ServiceItem(
                        imagePath: 'assets/plumber.png', text: 'Plumber'),
                    ServiceItem(imagePath: 'assets/priest.png', text: 'Priest'),
                    ServiceItem(imagePath: 'assets/outlet.png', text: 'Outlet'),
                    ServiceItem(
                        imagePath: 'assets/aluminium.png', text: 'Aluminium'),
                    ServiceItem(
                        imagePath: 'assets/carpenter.png', text: 'Carpenter'),
                    ServiceItem(
                        imagePath: 'assets/interior_decorator.png',
                        text: 'InteriorDecorator'),
                    ServiceItem(
                        imagePath: 'assets/tubewell.png', text: 'Tubewell'),
                    // ServiceItem(
                    //     imagePath: 'assets/tubewell.png', text: 'Tubewell'),
                    // ServiceItem(
                    //     imagePath: 'assets/tubewell.png', text: 'Tubewell'),
                    // ServiceItem(
                    //     imagePath: 'assets/tubewell.png', text: 'Tubewell'),
                    // ServiceItem(
                    //     imagePath: 'assets/tubewell.png', text: 'Tubewell'),
                    // ServiceItem(
                    //     imagePath: 'assets/tubewell.png', text: 'Tubewell'),
                    // ServiceItem(
                    //     imagePath: 'assets/tubewell.png', text: 'Tubewell'),
                    // ServiceItem(
                    //     imagePath: 'assets/tubewell.png', text: 'Tubewell'),
                    // ServiceItem(
                    //     imagePath: 'assets/tubewell.png', text: 'Tubewell'),
                    // ServiceItem(
                    //     imagePath: 'assets/tubewell.png', text: 'Tubewell'),
                    // ServiceItem(
                    //     imagePath: 'assets/tubewell.png', text: 'Tubewell'),
                    // ServiceItem(
                    //     imagePath: 'assets/tubewell.png', text: 'Tubewell'),
                    // ServiceItem(
                    //     imagePath: 'assets/tubewell.png', text: 'Tubewell'),
                    // ServiceItem(
                    //     imagePath: 'assets/tubewell.png', text: 'Tubewell'),
                    // ServiceItem(
                    //     imagePath: 'assets/tubewell.png', text: 'Tubewell'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ServiceItem extends StatelessWidget {
  final String imagePath;
  final String text;

  const ServiceItem({super.key, required this.imagePath, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          imagePath,
          height: MediaQuery.of(context).size.height * 0.08,
          width: MediaQuery.of(context).size.width * 0.08,
        ),
        FittedBox(child: Text(text, style: const TextStyle(fontSize: 14))),
      ],
    );
  }
}
