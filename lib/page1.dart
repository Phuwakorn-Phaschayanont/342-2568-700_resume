import 'package:flutter/material.dart';

// ignore: camel_case_types
class Page1Screen extends StatelessWidget {
  const Page1Screen({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var title = [
      'นาย ภูวกร ภาสชญานนท์',
      'Mr. Phuwakorn Phasachayanont',
      'ชาย',
      '20',
      'ไทย',
      '10 พ.ย. 2547',
    ];
    var subtitle = ['ชื่อ-นามสกุล (TH)', 'ชื่อ-นามสกุล (EN)', 'เพศ (GENDER)', 'อายุ (AGE)', 'สัญชาติ (NATIONALITY)', 'วันเกิด (BIRTHDAY)'];
    var image = [
      'assets/images/name.jpg',
      'assets/images/name.jpg',
      'assets/images/male.png',
      'assets/images/age.png',
      'assets/images/thai.jpg',
      'assets/images/birthday.png',
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('ข้อมูลส่วนตัวทั่วไป')),
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
