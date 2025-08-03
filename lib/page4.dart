import 'package:flutter/material.dart';

// ignore: camel_case_types
class Page4Screen extends StatelessWidget {
  const Page4Screen({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var title = [
      'โรงเรียนอนุบาลนครปฐม จังหวัดนครปฐม',
      'โรงเรียนสิรินธรราชวิทยาลัย จังหวัดนครปฐม',
      'โรงเรียนสิรินธรราชวิทยาลัย จังหวัดนครปฐม',
      'มหาวิทยาลัยเกษตรศาสตร์ (กำลังศึกษา) คณะศิลปศาสตร์และวิทยาศาตร์ สาขาเทคโนโลยีสารสนเทศ',
    ];
    var subtitle = ['ประถมศึกษา', 'มัธยมศึกษา - ตอนต้น', 'มัธยมศึกษา - ตอนปลาย', 'ปริญญาตรี (กำลังศึกษา)'];
    var image = [
      'assets/images/middleSchool.jpg',
      'assets/images/highSchool.jpg',
      'assets/images/highSchool.jpg',
      'assets/images/kukps.png',
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('ระดับการศึกษา'),
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
