import 'package:flutter/material.dart';

// ignore: camel_case_types
class Page1Screen extends StatelessWidget {
  const Page1Screen({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ข้อมูลส่วนตัวทั่วไป'),
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
              child: Text('ชื่อ-นามสกุล (TH) : นาย ภูวกร ภาสชญานนท์'),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('ชื่อ-นามสกุล (EN) : Mr. Phuwakorn Phasachayananont'),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('เพศ : ชาย'),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('อายุ : 20 ปี'),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('สัญชาติ : ไทย'),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('วันเกิด : 10 พ.ย. 2547'),
            ),
          ],
        ),
      ),
    );
  }
}
