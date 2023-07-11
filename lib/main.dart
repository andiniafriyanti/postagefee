import 'package:flutter/material.dart';
import 'package:postagecheck/feature/detail_page.dart';

void main() {
  runApp(const MyApp());
}

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Home Page'),
//         centerTitle: true,
//         backgroundColor: Colors.amber,
//       ),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DetailPage(),
    );
  }
}
