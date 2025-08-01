import 'package:flutter/material.dart';

// ignore: camel_case_types
class Page3Screen extends StatelessWidget {
  const Page3Screen({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ความสามารถพิเศษ'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 10),
            CircleAvatar(backgroundImage: AssetImage('assets/images/profile.jpg'),
              radius: 110,
            ),
            const SizedBox(height: 30),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('Excel : ดี'),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('Word : ดี'),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('PowerPoint : ดี'),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('Python : ดี'),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('C++ : ดี'),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('JavaScript : ดี'),
            ),
          ],
        ),
      ),
    );
  }
}
