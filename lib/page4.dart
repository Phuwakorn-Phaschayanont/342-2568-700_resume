import 'package:flutter/material.dart';

// ignore: camel_case_types
class Page4Screen extends StatelessWidget {
  const Page4Screen({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ระดับการศึกษา'),
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
              child: Text('ประถมศึกษา : โรงเรียนอนุบาลนครปฐม จังหวัดนครปฐม'),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('มัธยมศึกษา : โรงเรียนสิรินธรราชวิทยาลัย จังหวัดนครปฐม'),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('ปริญญาตรี : มหาวิทยาลัยเกษตรศาสตร์ คณะศิลปศาสตร์และวิทยาศาตร์ สาขาเทคโนโลยีสารสนเทศ'),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('ปริญญาโท : มหาวิทยาลัยเกษตรศาสตร์ (กำลังศึกษา) คณะศิลปศาสตร์และวิทยาศาตร์ สาขาเทคโนโลยีสารสนเทศ'),
            ),
          ],
        ),
      ),
    );
  }
}
