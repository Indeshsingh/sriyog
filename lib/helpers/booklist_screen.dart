// import 'package:flutter/material.dart';
// import 'package:profile_app/helpers/apphelper.dart';
// import 'package:profile_app/screens/bookdetails_screen.dart';

// class BookListScreen extends StatelessWidget {
//   const BookListScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Book List'),
//       ),
//       body: ListView.builder(
//         itemCount: AppHelpers.bookName.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             leading: Image.asset(AppHelpers.bookImage[0]),
//             title: Text(AppHelpers.bookName[0]),
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => const BookdetailsScreen(index: 0),
//                 ),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }

// void main() => runApp(const MaterialApp(
//       home: BookListScreen(),
//     ));
