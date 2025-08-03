import 'package:flutter/material.dart';

// ignore: camel_case_types
class Page5Screen extends StatelessWidget {
  const Page5Screen({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var title = [
      'Jurassic Park, Jurassic World',
      'Football, Basketball',
      'The last of Us',
      'วาดรูป',
      'London, England',
      'Radiohead - Let Down',
    ];
    var subtitle = ['อ่านหนังสือ (Reading)', 'ออกกำลังกาย (Exercise)', 'เล่นเกม (Gaming)', 'วาดรูป (Drawing)', 'ท่องเที่ยว (Traveling)', 'ฟังเพลง (Listening to Music)'];
    var image = [
      'assets/images/read.jpg',
      'assets/images/exercise.jpg',
      'assets/images/game.png',
      'assets/images/draw.jpg',
      'assets/images/travel.jpg',
      'assets/images/music.png',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('งานอดิเรก'),
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
