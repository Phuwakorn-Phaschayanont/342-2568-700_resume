import 'package:flutter/material.dart';

// ignore: camel_case_types
class Page2Screen extends StatelessWidget {
  const Page2Screen({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var title = [
      '102/2 ม.6 ต.หนองปากโลง อ.เมือง จ.นครปฐม 73000',
      '061-408-2087',
      'Arm Arm',
      'phuwakorn.p@ku.th',
      'armarmarm4547@gmail.com',
    ];
    var subtitle = ['ที่อยู่ (ADDRESS)', 'เบอร์โทรศัพท์ (PHONE)', 'เฟซบุ๊ก (FACEBOOK)', 'อีเมลล์ (EMAIL)', 'อีเมลล์ส่วนตัว (PERSONAL EMAIL)'];
    var image = [
      'assets/images/address.jpg',
      'assets/images/tel.png',
      'assets/images/Facebook.png',
      'assets/images/email.png',
      'assets/images/email.png',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('การติดต่อ'),
      ),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: const LinearGradient(
                colors: [Colors.black, Colors.purple],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            padding: const EdgeInsets.all(5),
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              padding: const EdgeInsets.all(3),
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile1.jpg'),
                radius: 107,
              ),
            ),
          ),
          const SizedBox(height: 23),
            Expanded(
              child: ListView.builder(
                itemCount: title.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(title[index]),
                      subtitle: Text(
                        subtitle[index],
                        style: TextStyle(fontSize: 12),
                      ),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(image[index]),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
