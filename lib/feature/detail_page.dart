import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 101,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/Logo1.png',
            ),
          ],
        ),
        backgroundColor: const Color(0xffE3F0FE),
      ),
      body: const Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Total Cost',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text('Total'),
            Text('Weight (gram)'),
            Text(
              'From',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text('Province'),
            Text('City'),
            Text(
              'From',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text('Province'),
            Text('City')
          ],
        ),
      ),
    );
  }
}
