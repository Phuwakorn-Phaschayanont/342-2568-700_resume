import 'package:flutter/material.dart';

// ignore: camel_case_types
class Page2Screen extends StatelessWidget {
  const Page2Screen({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('การติดต่อ'),
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
              child: Text('อีเมลล์ : phuwakorn.p@ku.th.com'),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('อีเมลล์ (สำรอง) : phuwakorn.p@live.ku.th.com'),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('เบอร์โทรศัพท์ : 099-999-9999'),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('เบอร์โทรศัพท์ (สำรอง) : 099-999-9999'),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('ที่อยู่ : 123/45 หมู่ 6 ต.หนองปากโลง อ.เมือง จ.นครปฐม 73000'),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('Facebook : Arm Arm'),
            ),
          ],
        ),
      ),
    );
  }
}
