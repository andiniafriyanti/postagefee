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
      body: ListView(
        children: <Widget>[
          const SizedBox(height: 50),
          const Text(
            'Total Cost',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 15),
          const Text(
            '22.000',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 25,
                color: Color(0xffC94A38),
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 15),
          const Text(
            '500 Weight (gram)',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            'From',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 15),
          const Text(
            'West Java',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 10),
          const Text(
            'Bekasi',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            'To',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 15),
          const Text(
            'West Java',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 10),
          const Text(
            'Bekasi',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 50),
          Container(
            child: SizedBox(
              width: 377,
              height: 48,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: const Color(0xffC94A38),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'Change Details',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],

        // TEST 1
        // child: const Column(
        //   // mainAxisAlignment: MainAxisAlignment.spaceAround,
        //   children: [
        //     SizedBox(
        //       height: 50,
        //     ),
        //     Text(
        //       'Total Cost',
        //       textAlign: TextAlign.center,
        //       style: TextStyle(
        //         fontSize: 28,
        //         fontWeight: FontWeight.bold,
        //       ),
        //     ),
        //     SizedBox(
        //       height: 20,
        //     ),
        //     Text(
        //       'Total',
        //       textAlign: TextAlign.left,
        //     ),
        //     SizedBox(
        //       height: 20,
        //     ),
        //     Text('Weight (gram)'),
        //     SizedBox(
        //       height: 60,
        //     ),
        //     Text(
        //       'From',
        //       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        //     ),
        //     Text('Province'),
        //     Text('City'),
        //     SizedBox(
        //       height: 60,
        //     ),
        //     Text(
        //       'To',
        //       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        //     ),
        //     Text('Province'),
        //     Text('City')
        //   ],
        // ),
      ),
    );
  }
}
