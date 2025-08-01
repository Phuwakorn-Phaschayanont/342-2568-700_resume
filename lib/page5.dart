import 'package:flutter/material.dart';

// ignore: camel_case_types
class Page5Screen extends StatelessWidget {
  const Page5Screen({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('งานอดิเรก'),
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
              child: Text('อ่านหนังสือ : ชอบ'),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('เล่นกีฬา : ชอบ'),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('เล่นเกม : ชอบ'),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('วาดรูป : ชอบ'),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('ท่องเที่ยว : ชอบ'),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('ฟังเพลง : ชอบ'),
            ),
          ],
        ),
      ),
    );
  }
}
